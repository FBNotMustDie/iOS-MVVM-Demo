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
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
}

