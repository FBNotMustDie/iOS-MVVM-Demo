//
//  LoginView.swift
//  iOS-MVVM-Demo
//
//  Created by Bibo on 3/22/15.
//  Copyright (c) 2015 Bibo. All rights reserved.
//

import UIKit

class LoginView: PeachesUIView {

    var userNameTextField : UITextField!
    var oneClickBtn : UIButton!
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    func setupView() {
        self.backgroundColor = UIColor.whiteColor()
        addUserNameTextField()
        addOneClickBtn()
    }
    
    func addUserNameTextField() {
        userNameTextField = PeachesUIObjectBuilder.UITextFieldWithFrame(CGRectMake(30, 100, self.viewWidth()-60, 45), text: "", placeHolder: " Enter a GitHub username", font: UIController.getGillsanLightFontWithSize(16), textColor: UIColor.darkGrayColor(), backgroundColor: UIColor.clearColor(), baseView: self)
        userNameTextField.becomeFirstResponder()
    }
    
    func addOneClickBtn() {
        oneClickBtn = PeachesUIObjectBuilder.UIButton(CGRectMake(30, 200, self.viewWidth()-60, 45), baseview: self, backgroundColor: UIColor.blackColor(), tintColor: UIColor.whiteColor(), title: "or use a testing account", font: UIController.getGillsanLightFontWithSize(16))
        oneClickBtn.layer.cornerRadius = 5
    }
}
