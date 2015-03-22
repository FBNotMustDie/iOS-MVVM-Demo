//
//  PeachesUIViewController.m
//  iOS-MVVM-Demo
//
//  Created by Bibo on 3/22/15.
//  Copyright (c) 2015 Bibo. All rights reserved.
//

#import "PeachesUIViewController.h"

@implementation PeachesUIViewController

- (CGFloat)screenHeight {
    return self.view.frame.size.height;
}

- (CGFloat)screenWidth {
    return self.view.frame.size.width;
}

- (CGRect)fullScreen {
    return CGRectMake(0, 0, [self screenWidth], [self screenHeight]);
}

@end
