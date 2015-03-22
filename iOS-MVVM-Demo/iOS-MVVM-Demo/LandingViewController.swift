//
//  ViewController.swift
//  iOS-MVVM-Demo
//
//  Created by Bibo on 3/22/15.
//  Copyright (c) 2015 Bibo. All rights reserved.
//

import UIKit

class LandingViewController: PeachesUIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewController()
    }

    func setupViewController() {
        addLoginView()
    }
    func addLoginView() {
        var loginView : LoginView = LoginView(frame: fullScreen())
        self.view.addSubview(loginView)
        loginView.alpha = 0
        UIView.animateWithDuration(0.5, animations: { () -> Void in
            loginView.alpha = 1
            }) { (finished:Bool) -> Void in
                
        }
    }
    
    func oneClickBtnPressed() {
        UserController.getGitHubProfileWithUsername("BiboMain")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
}

