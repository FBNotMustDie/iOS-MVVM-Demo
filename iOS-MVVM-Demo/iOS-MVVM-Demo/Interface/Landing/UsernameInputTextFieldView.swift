//
//  UsernameInputTextField.swift
//  iOS-MVVM-Demo
//
//  Created by MacbookProBBGG on 4/3/15.
//  Copyright (c) 2015 Bibo. All rights reserved.
//

import UIKit

class UsernameInputTextFieldView: PeachesUIView {

    var userNameTextField : UITextField!
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    func setupView() {
        self.backgroundColor = UIColor.whiteColor()
        addInputTextField()
    }
    
    func addInputTextField() {
        // create userNameTextField that is hitting the Github api asking for data on the username entered
        
        userNameTextField = PeachesUIObjectBuilder.UITextFieldWithFrame(fullView(), text: "", placeHolder: " Enter a GitHub username", font: UIFont(gillsansLightWithSize: 16), textColor: UIColor.darkGrayColor(), backgroundColor: UIColor.clearColor(), baseView: self)
        userNameTextField.becomeFirstResponder()
        
        userNameTextField.rac_textSignal().subscribeNext {
            (next:AnyObject!) -> () in
            var text = next as NSString
            if (text.length > 0) {
                //spaces are removed from the url
                text = text.stringByReplacingOccurrencesOfString(" ", withString: "")
                UserController.getGitHubProfileWithUsername(text)
            }
            else {
                //Reset if textField is empty
                UserController.shared().userViewModel.name = ""
            }
        }
    }
}
