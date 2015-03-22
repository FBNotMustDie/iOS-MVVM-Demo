//
//  PeachesUIObjectBuilder.h
//  iOS-MVVM-Demo
//
//  Created by Bibo on 3/22/15.
//  Copyright (c) 2015 Bibo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PeachesUIObjectBuilder : NSObject

+ (UIView *)UIView:(CGRect)frame backgroundColor:(UIColor *)color baseView:(UIView *)baseView;

+ (UILabel *)UILabelWithFrame:(CGRect)frame
                         text:(NSString *)text
                    textColor:(UIColor *)textColor
              backgroundColor:(UIColor *)backgroundColor
                         font:(UIFont *)font
                textAlignment:(NSTextAlignment)textAlignment
                     baseView:(UIView *)baseView;

+ (UITextField *)UITextFieldWithFrame:(CGRect)frame
                                 text:(NSString *)text
                          placeHolder:(NSString *)placeHolder
                                 font:(UIFont *)font
                            textColor:(UIColor *)textColor
                      backgroundColor:(UIColor *)backgroundColor
                             baseView:(UIView *)baseView;

+ (UIButton *)UIButton:(CGRect)frame
              baseview:(UIView *)baseView
       backgroundColor:(UIColor *)backgroundColor
             tintColor:(UIColor *)tintColor
                 title:(NSString *)title
                  font:(UIFont *)font;
@end
