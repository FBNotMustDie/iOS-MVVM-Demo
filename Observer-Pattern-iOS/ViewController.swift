//
//  ViewController.swift
//  Observer-Pattern-iOS
//
//  Created by Bibo on 5/6/15.
//  Copyright (c) 2015 Alminty. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    var displayLabel : UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.whiteColor()
        
        addDisplayLabel()
        addInputTextField()
        addObservers()
    }
    
    override func viewWillDisappear(animated: Bool) {
        self.removeObservers()
    }
    
    func addDisplayLabel() {
        displayLabel = UILabel(frame: CGRectMake(self.view.bounds.size.width/2-150, 20, 300, 100))
        displayLabel.textAlignment = NSTextAlignment.Center;
        displayLabel.numberOfLines = 0;
        displayLabel.font = UIFont(name: "Gillsans-Light", size: 16)
        self.view.addSubview(displayLabel)
    }
    
    func addInputTextField() {
        var inputTextField = UITextField(frame: CGRectMake(self.view.bounds.size.width/2-140, self.view.bounds.size.height-310, 280, 40))
        inputTextField.placeholder = " enter github username"
        inputTextField.borderStyle = UITextBorderStyle.RoundedRect
        inputTextField.font = UIFont(name: "Gillsans-Light", size: 16)
        inputTextField.addTarget(self, action: Selector("textFieldValueChanged:"), forControlEvents: UIControlEvents.EditingChanged)
        self.view.addSubview(inputTextField)
        inputTextField.becomeFirstResponder()
    }
    
    func addObservers() {
        ObserverController.shared().addObserver(self, forKeyPath: "displayViewModel", options: NSKeyValueObservingOptions.New | NSKeyValueObservingOptions.Old | NSKeyValueObservingOptions.Initial, context: nil)
    }
    
    func removeObservers() {
        ObserverController.shared().removeObserver(self, forKeyPath: "displayViewModel", context: nil)
    }
    
    func textFieldValueChanged(textField: UITextField) {
        ObserverController.shared().getNameForUsername(textField.text)
    }
    
    override func observeValueForKeyPath(keyPath: String, ofObject object: AnyObject, change: [NSObject : AnyObject], context: UnsafeMutablePointer<Void>) {
        if (keyPath == "displayViewModel") {
            var displayViewModel = change["new"] as! DisplayViewModel
            displayLabel.text = displayViewModel.displayString
        }
    }
}

