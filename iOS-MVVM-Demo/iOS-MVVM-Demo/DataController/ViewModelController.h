//
//  ViewModelController.h
//  iOS-MVVM-Demo
//
//  Created by Bibo on 3/22/15.
//  Copyright (c) 2015 Bibo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UserViewModel.h"

@interface ViewModelController : NSObject

+ (ViewModelController *)shared;

@property (nonatomic, strong) UserViewModel *userViewModel;

@end
