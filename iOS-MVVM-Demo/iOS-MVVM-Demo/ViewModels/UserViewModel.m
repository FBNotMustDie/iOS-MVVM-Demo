//
//  UserViewModel.m
//  iOS-MVVM-Demo
//
//  Created by Bibo on 3/22/15.
//  Copyright (c) 2015 Bibo. All rights reserved.
//

#import "UserViewModel.h"

@implementation UserViewModel

+ (UserViewModel *)shared {
    static UserViewModel *shared;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{ shared = [[[self class] alloc] init]; });
    return shared;
}

- (instancetype)init {
    self = [super init];
    if (self) {
        [self initVariables];
    }
    return self;
}

-(void)initVariables {
    self.name = @"";
}

@end
