//
//  ObserverController.swift
//  Observer-Pattern-iOS
//
//  Created by Bibo on 5/6/15.
//  Copyright (c) 2015 Alminty. All rights reserved.
//

import UIKit

class ObserverController: NSObject {
   
    var displayViewModel : DisplayViewModel!
    
    class func shared() -> ObserverController {
        struct Static {
            static var onceToken: dispatch_once_t = 0
            static var instance: ObserverController? = nil
        }
        dispatch_once(&Static.onceToken) {
            Static.instance = ObserverController()
        }
        return Static.instance!
    }

    override init() {
        super.init()
        
        displayViewModel = DisplayViewModel()
    }
    
    func getNameForUsername (username:String) {
        
        if(count(username)==0) {
            self.willChangeValueForKey("displayViewModel")
            self.displayViewModel.displayString = self.displayViewModel.initialDisplayString
            self.didChangeValueForKey("displayViewModel")
        }
        else {
            var urlString = "https://api.github.com/users/" + username.stringByReplacingOccurrencesOfString(" ", withString: "%20", options: NSStringCompareOptions.allZeros, range: nil)
            var urlRequest = NSMutableURLRequest(URL: NSURL(string: urlString)!)
            var sessionConfig = NSURLSessionConfiguration.ephemeralSessionConfiguration()
            var urlSession = NSURLSession(configuration: sessionConfig)
            var dataTast = urlSession.dataTaskWithRequest(urlRequest, completionHandler: { (data:NSData!, response:NSURLResponse!, error:NSError!) -> Void in
                dispatch_async(dispatch_get_main_queue()) {
                    self.willChangeValueForKey("displayViewModel")
                    if(error != nil) {
                        if(error?.code == -1011) {
                            self.displayViewModel.displayString = "username not found"
                        }
                        else {
                            self.displayViewModel.displayString = "github api limit reached"
                        }
                    }
                    else {
                        var error : NSError?;
                        let responseDict = NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.allZeros, error: &error) as! NSDictionary
                        if (responseDict["name"] != nil) {
                            var name = responseDict["name"] as! String
                            self.displayViewModel.displayString = "Name: \(name)"
                        }
                        else {
                            if(responseDict["message"] != nil) {
                                var errorMessage = responseDict["message"] as! String
                                self.displayViewModel.displayString = "Error: \(errorMessage)"
                            }
                            else {
                                self.displayViewModel.displayString = "no name stored for this username"
                            }
                        }
                        
                    }
                    self.didChangeValueForKey("displayViewModel")
                }
            })
            dataTast.resume()
        }
    }
}
