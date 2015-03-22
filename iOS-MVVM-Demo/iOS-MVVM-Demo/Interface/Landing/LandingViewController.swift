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
        
        //show usernameView as the landing view
        var usernameView : UsernameView = UsernameView(frame: fullScreen())
        self.view.addSubview(usernameView)
        usernameView.alpha = 0
        UIView.animateWithDuration(0.5, animations: { () -> Void in
            usernameView.alpha = 1
            }) { (finished:Bool) -> Void in
                
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
}

