//
//  AppDelegate.swift
//  iOS-MVVM-Demo
//
//  Created by Bibo on 3/22/15.
//  Copyright (c) 2015 Bibo. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        
        initAllControllers()
        setupRootViewController ()
        
        return true
    }
    
    func initAllControllers() {
        ViewModelController.shared()
    }

    func setupRootViewController () {
        window = UIWindow(frame: UIScreen.mainScreen().bounds)
        window?.clipsToBounds = true;
        var vc : LandingViewController! = LandingViewController()
        window?.rootViewController = vc
        window?.makeKeyAndVisible()
    }
}

