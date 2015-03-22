//
//  ViewModelController.m
//  iOS-MVVM-Demo
//
//  Created by Bibo on 3/22/15.
//  Copyright (c) 2015 Bibo. All rights reserved.
//

#import "ViewModelController.h"

@implementation ViewModelController

+ (ViewModelController *)shared {
    static ViewModelController *shared;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{ shared = [[[self class] alloc] init]; });
    return shared;
}

- (instancetype)init {
    self = [super init];
    if (self) {
        [self initAll];
    }
    return self;
}

- (void)initAll {
    self.userViewModel = [[UserViewModel alloc]init];
}

@end
