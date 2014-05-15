//
//  UILabel+HYExtensions.h
//  PhotoBook
//
//  Created by Hayden Young on 5/03/14.
//  Copyright (c) 2014 Hayden Young. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (HYExtensions)

+ (UILabel *)labelWithTitle:(NSString *)title font:(UIFont *)font;
+ (UILabel *)labelWithTitle:(NSString *)title font:(UIFont *)font textColor:(UIColor *)textColor;
+ (UILabel *)labelWithTitle:(NSString *)title font:(UIFont *)font textColor:(UIColor *)textColor backgroundColor:(UIColor *)backgroundColor;

+ (UILabel *)labelWithAttributedTitle:(NSAttributedString *)attrTitle font:(UIFont *)font textColor:(UIColor *)textColor;

@end
