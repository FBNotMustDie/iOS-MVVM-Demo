//
//  NameDisplayView.swift
//  iOS-MVVM-Demo
//
//  Created by MacbookProBBGG on 4/3/15.
//  Copyright (c) 2015 Bibo. All rights reserved.
//

import UIKit

class NameDisplayView: PeachesUIView {

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
    }
    
    func addDisplayLabel() {
        // create displayLabel and bind it to the share instance of userViewModel's name property
        
        displayLabel = PeachesUIObjectBuilder.UILabelWithFrame(fullView(), text: "", textColor: UIColor.darkGrayColor(), backgroundColor: UIColor.clearColor(), font: UIFont(gillsansLightWithSize: 16), textAlignment: NSTextAlignment.Center, baseView: self)
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
}
