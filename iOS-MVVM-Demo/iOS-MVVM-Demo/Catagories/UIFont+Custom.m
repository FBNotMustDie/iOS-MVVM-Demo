//
//  UIFont+Custom.m
//  iOS-MVVM-Demo
//
//  Created by MacbookProBBGG on 4/3/15.
//  Copyright (c) 2015 Bibo. All rights reserved.
//

#import "UIFont+Custom.h"

@implementation UIFont (Custom)

- (id)initWithGillsansLightWithSize:(CGFloat)size {
    self = [super init];
    if (self) {
        
    }
    return [UIFont fontWithName:@"Gillsans-Light" size:size];
}

//-(UIFont *)gillsansLightWithSize:(CGFloat )size {
//    return [UIFont fontWithName:@"Gillsans-Light" size:size];
//}

@end
