//
//  PeachesUIView.m
//  iOS-MVVM-Demo
//
//  Created by Bibo on 3/22/15.
//  Copyright (c) 2015 Bibo. All rights reserved.
//

#import "PeachesUIView.h"

@implementation PeachesUIView

- (id)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        
    }
    return self;
}

- (CGFloat)viewWidth {
    return self.frame.size.width;
}
- (CGFloat)viewHeight {
    return self.frame.size.height;
}
- (CGRect)fullView {
    return CGRectMake(0, 0, [self viewWidth], [self viewHeight]);
}

@end
