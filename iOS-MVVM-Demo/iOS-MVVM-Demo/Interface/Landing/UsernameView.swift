//
//  UsernameView.swift
//  iOS-MVVM-Demo
//
//  Created by Bibo on 3/22/15.
//  Copyright (c) 2015 Bibo. All rights reserved.
//

import UIKit

class UsernameView: PeachesUIView {

    
    var displayView : NameDisplayView!
    var usernameInputTextField : UsernameInputTextFieldView!
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    func setupView() {
        self.backgroundColor = UIColor.whiteColor()
        addDisplayView()
        addUserNameTextField()
    }
    
    func addDisplayView() {
        displayView = NameDisplayView(frame: CGRectMake(30, 100, self.viewWidth()-60, 60))
        self.addSubview(displayView)
    }
    
    func addUserNameTextField() {
        usernameInputTextField = UsernameInputTextFieldView(frame: CGRectMake(30, 240, self.viewWidth()-60, 45))
        self.addSubview(usernameInputTextField)
    }
}
