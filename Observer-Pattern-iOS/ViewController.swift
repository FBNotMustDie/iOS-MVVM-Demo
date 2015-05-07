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
    var inputTextField : UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(animated: Bool) {
        setupVC()
        beginObserve(ObserverController.shared(), keyPath: "displayViewModel")
    }
    
    override func viewWillDisappear(animated: Bool) {
        endObservation(ObserverController.shared(), keyPath: "displayViewModel")
    }
    
    func setupVC() {
        addDisplayLabel()
        addInputTextField()
    }
    
    func addDisplayLabel() {
        displayLabel = UILabel(frame: CGRectMake(self.view.bounds.size.width/2-150, 20, 300, 100))
        displayLabel.textAlignment = NSTextAlignment.Center;
        displayLabel.numberOfLines = 0;
        displayLabel.font = UIFont(name: "Gillsans-Light", size: 16)
        self.view.addSubview(displayLabel)
    }
    
    func addInputTextField() {
        inputTextField = UITextField(frame: CGRectMake(self.view.bounds.size.width/2-140, self.view.bounds.size.height-310, 280, 40))
        inputTextField.placeholder = " enter github username"
        inputTextField.borderStyle = UITextBorderStyle.RoundedRect
        inputTextField.font = UIFont(name: "Gillsans-Light", size: 16)
        inputTextField.addTarget(self, action: Selector("textFieldValueChanged:"), forControlEvents: UIControlEvents.EditingChanged)
        self.view.addSubview(inputTextField)
        inputTextField.becomeFirstResponder()
    }
    
    func textFieldValueChanged(textField: UITextField) {
        ObserverController.shared().getNameForUsername(textField.text)
    }
    
    func beginObserve(object:NSObject, keyPath:String) {
        object.addObserver(self, forKeyPath: keyPath, options: NSKeyValueObservingOptions.New | NSKeyValueObservingOptions.Old | NSKeyValueObservingOptions.Initial, context: nil)
    }
    
    func endObservation(object:NSObject, keyPath:String) {
        if (object.observationInfo != nil) {
            object.removeObserver(self, forKeyPath: keyPath, context: nil)
        }
    }
    
    override func observeValueForKeyPath(keyPath: String, ofObject object: AnyObject, change: [NSObject : AnyObject], context: UnsafeMutablePointer<Void>) {
        if (keyPath == "displayViewModel") {
            var displayViewModel = change["new"] as! DisplayViewModel
            displayLabel.text = displayViewModel.displayString
        }
    }
}

