//
//  DisplayViewModel.swift
//  Observer-Pattern-iOS
//
//  Created by Bibo on 5/6/15.
//  Copyright (c) 2015 Alminty. All rights reserved.
//

import UIKit

class DisplayViewModel: NSObject {
    var initialDisplayString : String! = "github username to full name"
    var displayString : String!
    
    override init() {
        super.init()
        displayString = initialDisplayString
    }
}
