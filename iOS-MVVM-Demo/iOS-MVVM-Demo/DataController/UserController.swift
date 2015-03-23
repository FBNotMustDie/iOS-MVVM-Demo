//
//  UserController.swift
//  iOS-MVVM-Demo
//
//  Created by Bibo on 3/22/15.
//  Copyright (c) 2015 Bibo. All rights reserved.
//

import UIKit

class UserController: NSObject {

    class func getGitHubProfileWithUsername (userName : NSString) {
        var url : NSString! = "https://api.github.com/users/" + userName
        PeachesQuery.cachelessGetFromURL(url, param: nil, isImage: false) { (responseObject:AnyObject!,error:NSError!) -> Void in
            if (error != nil) {
                if(error?.code == -1011) {
                    ViewModelController.shared().userViewModel.name = "username not found"
                }
                else {
                    ViewModelController.shared().userViewModel.name = "github api limit reached"
                }
            }
            else {
                let name : NSString? = responseObject["name"] as? NSString
                if (name != nil) {
                    ViewModelController.shared().userViewModel.name = name
                }
                else {
                    ViewModelController.shared().userViewModel.name = "no name stored for this username"
                }
            }
        }
    }
}
