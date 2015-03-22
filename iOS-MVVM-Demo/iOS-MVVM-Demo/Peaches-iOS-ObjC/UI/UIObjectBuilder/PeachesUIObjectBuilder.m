//
//  PeachesUIObjectBuilder.m
//  iOS-MVVM-Demo
//
//  Created by Bibo on 3/22/15.
//  Copyright (c) 2015 Bibo. All rights reserved.
//

#import "PeachesUIObjectBuilder.h"

@implementation PeachesUIObjectBuilder

+ (UIView *)UIView:(CGRect)frame backgroundColor:(UIColor *)color baseView:(UIView *)baseView {
    UIView *view = [[UIView alloc] initWithFrame:frame];
    view.backgroundColor = color;
    [baseView addSubview:view];
    return view;
}

+ (UILabel *)UILabelWithFrame: (CGRect)frame text:(NSString *)text textColor:(UIColor *)textColor backgroundColor:(UIColor *)backgroundColor font:(UIFont *)font textAlignment:(NSTextAlignment)textAlignment baseView:(UIView *)baseView
{
    UILabel *label = [[UILabel alloc]initWithFrame:frame];
    label.text = text;
    label.textColor = textColor;
    label.backgroundColor = backgroundColor;
    label.font = font;
    label.textAlignment = textAlignment;
    label.numberOfLines = 0;
    label.lineBreakMode = NSLineBreakByWordWrapping;
    [baseView addSubview:label];
    
    return label;
}

+ (UITextField *)UITextFieldWithFrame:(CGRect)frame
                                 text:(NSString *)text
                          placeHolder:(NSString *)placeHolder
                                 font:(UIFont *)font
                            textColor:(UIColor *)textColor
                      backgroundColor:(UIColor *)backgroundColor
                             baseView:(UIView *)baseView {
    
    UITextField *textField = [[UITextField alloc]initWithFrame:frame];
    textField.backgroundColor = backgroundColor;
    textField.textColor = textColor;
    textField.font = font;
    textField.placeholder = placeHolder;
    textField.text = text;
    [baseView addSubview:textField];
    
    return textField;
}

+ (UIButton *)UIButton:(CGRect)frame
              baseview:(UIView *)baseView
       backgroundColor:(UIColor *)backgroundColor
             tintColor:(UIColor *)tintColor
                 title:(NSString *)title
                  font:(UIFont *)font {
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn.frame = frame;
    btn.backgroundColor = backgroundColor;
    btn.tintColor = tintColor;
    [btn setTitle:title forState:UIControlStateNormal];
    btn.titleLabel.font = font;
    [baseView addSubview:btn];
    
    return btn;
}

@end
