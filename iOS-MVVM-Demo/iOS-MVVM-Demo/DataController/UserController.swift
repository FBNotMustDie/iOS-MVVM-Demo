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
        PeachesQuery.cachelessGetFromURL(url, param: nil, isImage: false) { (responseObject:AnyObject!) -> Void in
            let name : NSString! = responseObject["name"] as NSString!
            if (name != nil) {
                ViewModelController.shared().userViewModel.name = name
            }
            else {
                ViewModelController.shared().userViewModel.name = "username not associated with a name"
            }
        }
    }
}