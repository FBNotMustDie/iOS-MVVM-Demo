//
//  UsernameView.swift
//  iOS-MVVM-Demo
//
//  Created by Bibo on 3/22/15.
//  Copyright (c) 2015 Bibo. All rights reserved.
//

import UIKit

class UsernameView: PeachesUIView,UITextFieldDelegate {

    var userNameTextField : UITextField!
    var displayLabel : UILabel!
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    func setupView() {
        self.backgroundColor = UIColor.whiteColor()
        addDisplayLabel()
        addUserNameTextField()
    }
    
    func addDisplayLabel() {
        
        // create displayLabel and bind it to the share instance of userViewModel's name property
        
        displayLabel = PeachesUIObjectBuilder.UILabelWithFrame(CGRectMake(30, 100, self.viewWidth()-60, 60), text: "", textColor: UIColor.darkGrayColor(), backgroundColor: UIColor.clearColor(), font: UIFont(gillsansLightWithSize: 16), textAlignment: NSTextAlignment.Center, baseView: self)
        var signal : RACSignal = UserController.shared().userViewModel.rac_valuesForKeyPath("name", observer: self)
            signal.subscribeNext { (object: AnyObject!) -> Void in
                if (object != nil) {
                    let name : NSString! = object as NSString!
                    if (name.length > 0) {
                        self.displayLabel.text = name
                    }
                    else {
                        self.displayLabel.text = "Name will display here"
                    }
                }
        }
    }
    
    func addUserNameTextField() {
        
        // create userNameTextField that is hitting the Github api asking for data on the username entered
        
        userNameTextField = PeachesUIObjectBuilder.UITextFieldWithFrame(CGRectMake(30, 240, self.viewWidth()-60, 45), text: "", placeHolder: " Enter a GitHub username", font: UIFont(gillsansLightWithSize: 16), textColor: UIColor.darkGrayColor(), backgroundColor: UIColor.clearColor(), baseView: self)
        userNameTextField.delegate = self
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
