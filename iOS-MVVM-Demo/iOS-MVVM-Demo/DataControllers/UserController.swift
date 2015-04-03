//
//  UserController.swift
//  iOS-MVVM-Demo
//
//  Created by Bibo on 3/22/15.
//  Copyright (c) 2015 Bibo. All rights reserved.
//

import UIKit

class UserController: NSObject {

    var userViewModel : UserViewModel!
    var userModel : UserModel!
    
    class func shared() -> UserController {
        struct Static {
            static var onceToken: dispatch_once_t = 0
            static var instance: UserController? = nil
        }
        dispatch_once(&Static.onceToken) {
            Static.instance = UserController()
        }
        return Static.instance!
    }
    
    override init() {
        userViewModel = UserViewModel()
        userModel = UserModel()
    }
    
    class func getGitHubProfileWithUsername (userName : NSString) {
        var url : NSString! = "https://api.github.com/users/" + userName
        PeachesQuery.cachelessGetFromURL(url, param: nil, isImage: false) { (responseObject:AnyObject!,error:NSError!) -> Void in
            if (error != nil) {
                if(error?.code == -1011) {
                    UserController.shared().userViewModel.name = "username not found"
                }
                else {
                    UserController.shared().userViewModel.name = "github api limit reached"
                }
            }
            else {
                var userModel : UserModel = UserModel(dictionary: responseObject as NSDictionary)
                if (userModel.name != nil) {
                    UserController.shared().userViewModel.name = userModel.name
                }
                else {
                    UserController.shared().userViewModel.name = "no name stored for this username"
                }
            }
        }
    }
}