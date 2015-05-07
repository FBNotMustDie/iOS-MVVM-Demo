//
//  AppDelegate.swift
//  Observer-Pattern-iOS
//
//  Created by Bibo on 5/6/15.
//  Copyright (c) 2015 Alminty. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        
        self.setupRootVC()
        
        return true
    }
    
    func setupRootVC() {
        window = UIWindow(frame: UIScreen.mainScreen().bounds)
        window?.rootViewController = ViewController()
        window?.backgroundColor = UIColor.whiteColor()
        window?.clipsToBounds = true;
        window?.makeKeyAndVisible()
    }
}

