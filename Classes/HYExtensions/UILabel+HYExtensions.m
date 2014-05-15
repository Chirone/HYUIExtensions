//
//  UILabel+HYExtensions.m
//  PhotoBook
//
//  Created by Hayden Young on 5/03/14.
//  Copyright (c) 2014 Hayden Young. All rights reserved.
//

#import "UILabel+HYExtensions.h"

@implementation UILabel (HYExtensions)

+ (UILabel *)labelWithTitle:(NSString *)title font:(UIFont *)font
{
	return [UILabel labelWithTitle:title font:font textColor:nil];
}

+ (UILabel *)labelWithTitle:(NSString *)title font:(UIFont *)font textColor:(UIColor *)textColor
{
	return [UILabel labelWithTitle:title font:font textColor:textColor backgroundColor:nil];
}

+ (UILabel *)labelWithTitle:(NSString *)title font:(UIFont *)font textColor:(UIColor *)textColor backgroundColor:(UIColor *)backgroundColor
{
	UILabel *label = [[UILabel alloc] init];
	label.backgroundColor = backgroundColor ? backgroundColor : [UIColor clearColor];
	
	if(title)
		label.text = title;
	
	if(font)
		label.font = font;
	
	if(textColor)
		label.textColor = textColor;
	
	[label sizeToFit];
	
	return label;
}

+ (UILabel *)labelWithAttributedTitle:(NSAttributedString *)attrTitle font:(UIFont *)font textColor:(UIColor *)textColor
{
	UILabel *label = [UILabel labelWithTitle:nil font:font textColor:textColor backgroundColor:nil];
	label.attributedText = attrTitle;
	[label sizeToFit];
	return label;
}
@end
