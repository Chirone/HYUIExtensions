//
//  UIButton+HYExtensions.m
//  Pods
//
//  Created by Hayden Young on 15/05/14.
//
//

#import "UIButton+HYExtensions.h"

#define hy_kDefaultButtonTextColor		[UIColor colorWithRed:43.0/255 green:143.0/255 blue:250.0/255 alpha:1.0]
#define hy_kDefaultButtonFont			[UIFont systemFontOfSize:14]

@implementation UIButton (HYExtensions)

#pragma mark - Buttons with Titles -
+ (UIButton *)hy_buttonWithType:(UIButtonType)type title:(NSString *)title font:(UIFont *)font titleColor:(UIColor *)titleColor target:(id)target action:(SEL)selector
{
	
	UIButton *button = [UIButton buttonWithType:type];
	
	//--- add title
	[button setTitle:title forState:UIControlStateNormal];
	button.titleLabel.font = font;
	[button setTitleColor:titleColor forState:UIControlStateNormal];
	
	//--- add target and size to fit
	[button addTarget:target action:selector forControlEvents:UIControlEventTouchUpInside];
	
	[button sizeToFit];
	
	return button;
}
+ (UIButton *)hy_buttonWithType:(UIButtonType)type title:(NSString *)title font:(UIFont *)font target:(id)target action:(SEL)action
{
	return [UIButton hy_buttonWithType:type title:title font:font titleColor:[UIColor blackColor] target:target action:action];
}

+ (UIButton *)hy_buttonWithType:(UIButtonType)type title:(NSString *)title target:(id)target action:(SEL)action
{
	return [UIButton hy_buttonWithType:type title:title font:hy_kDefaultButtonFont titleColor:hy_kDefaultButtonTextColor target:target action:action];
}
#pragma mark -
+ (UIButton *)hy_buttonWithTitle:(NSString *)title font:(UIFont *)font fontColor:(UIColor *)fontColor target:(id)target action:(SEL)action
{
	return [UIButton hy_buttonWithType:UIButtonTypeCustom title:title font:font titleColor:fontColor target:target action:action];
}

+ (UIButton *)hy_buttonWithTitle:(NSString *)title target:(id)target action:(SEL)action
{
	return [UIButton hy_buttonWithType:UIButtonTypeCustom title:title font:hy_kDefaultButtonFont titleColor:hy_kDefaultButtonTextColor target:target action:action];
}
+ (UIButton *)hy_buttonRoundedWithTitle:(NSString *)title target:(id)target action:(SEL)action
{
	return [UIButton hy_buttonWithType:UIButtonTypeRoundedRect title:title font:hy_kDefaultButtonFont titleColor:hy_kDefaultButtonTextColor target:target action:action];
}



#pragma mark - Buttons with Images -

+ (UIButton *)hy_buttonWithImageNormal:(UIImage *)imageNormal imageHighlighted:(UIImage *)imageHighlighted imageDisabled:(UIImage *)imageDisabled imageSelected:(UIImage *)imageSelected target:(id)target action:(SEL)action
{
	UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
	
	//--- set the images
	if(imageNormal)
		[button setImage:imageNormal forState:UIControlStateNormal];
	if(imageHighlighted)
		[button setImage:imageHighlighted forState:UIControlStateHighlighted];
	if(imageDisabled)
		[button setImage:imageDisabled forState:UIControlStateDisabled];
	if(imageSelected)
		[button setImage:imageSelected forState:UIControlStateSelected];
	
	//--- add target and size to fit
	[button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
	
	[button sizeToFit];
	
	return button;
}

+ (UIButton *)hy_buttonWithImageNormal:(UIImage *)imageNormal imageHighlighted:(UIImage *)imageHighlighted imageDisabled:(UIImage *)imageDisabled target:(id)target action:(SEL)action
{
	return [UIButton hy_buttonWithImageNormal:imageNormal imageHighlighted:imageHighlighted imageDisabled:imageDisabled imageSelected:nil target:target action:action];
}

+ (UIButton *)hy_buttonWithImageNormal:(UIImage *)imageNormal imageHighlighted:(UIImage *)imageHighlighted target:(id)target action:(SEL)action
{
	return [UIButton hy_buttonWithImageNormal:imageNormal imageHighlighted:imageHighlighted imageDisabled:nil imageSelected:nil target:target action:action];
}

+ (UIButton *)hy_buttonWithImageNormal:(UIImage *)imageNormal target:(id)target action:(SEL)action
{
	return [UIButton hy_buttonWithImageNormal:imageNormal imageHighlighted:nil imageDisabled:nil imageSelected:nil target:target action:action];
}
#pragma mark - Buttons with Images and Titles -

+ (UIButton *)hy_buttonWithTitle:(NSString *)title font:(UIFont *)font titleColor:(UIColor *)titleColor image:(UIImage *)imageNormal imageHighlighted:(UIImage *)imageHighlighted imageDisabled:(UIImage *)imageDisabled imageSelected:(UIImage *)imageSelected target:(id)target action:(SEL)action
{
	UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
	
	//--- set the images
	if(imageNormal)
		[button setImage:imageNormal forState:UIControlStateNormal];
	if(imageHighlighted)
		[button setImage:imageHighlighted forState:UIControlStateHighlighted];
	if(imageDisabled)
		[button setImage:imageDisabled forState:UIControlStateDisabled];
	if(imageSelected)
		[button setImage:imageSelected forState:UIControlStateSelected];
	
	//--- Set title
	[button setTitle:title forState:UIControlStateNormal];
	button.titleLabel.font = font;
	[button setTitleColor:titleColor forState:UIControlStateNormal];
	
	//--- add target action and size to fit
	[button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
	
	[button sizeToFit];
	
	return button;
}

+ (UIButton *)hy_buttonWithTitle:(NSString *)title font:(UIFont *)font titleColor:(UIColor *)titleColor image:(UIImage *)imageNormal imageHighlighted:(UIImage *)imageHighlighted imageDisabled:(UIImage *)imageDisabled target:(id)target action:(SEL)action
{
	return [UIButton hy_buttonWithTitle:title font:font titleColor:titleColor image:imageNormal imageHighlighted:imageHighlighted imageDisabled:imageDisabled imageSelected:nil target:target action:action];
}

+ (UIButton *)hy_buttonWithTitle:(NSString *)title font:(UIFont *)font titleColor:(UIColor *)titleColor image:(UIImage *)imageNormal imageHighlighted:(UIImage *)imageHighlighted target:(id)target action:(SEL)action
{
	return [UIButton hy_buttonWithTitle:title font:font titleColor:titleColor image:imageNormal imageHighlighted:imageHighlighted imageDisabled:nil imageSelected:nil target:target action:action];
}

+ (UIButton *)hy_buttonWithTitle:(NSString *)title font:(UIFont *)font titleColor:(UIColor *)titleColor image:(UIImage *)imageNormal target:(id)target action:(SEL)action
{
	return [UIButton hy_buttonWithTitle:title font:font titleColor:titleColor image:imageNormal imageHighlighted:nil imageDisabled:nil imageSelected:nil target:target action:action];
}


#pragma mark - Buttons with Background Images and Titles -
+ (UIButton *)hy_buttonWithTitle:(NSString *)title font:(UIFont *)font titleColor:(UIColor *)titleColor backgroundImage:(UIImage *)imageNormal backgroundImageHighlighted:(UIImage *)imageHighlighted backgroundImageDisabled:(UIImage *)imageDisabled backgroundImageSelected:(UIImage *)imageSelected target:(id)target action:(SEL)action
{
	UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
	
	//--- set the images
	if(imageNormal)
		[button setBackgroundImage:imageNormal forState:UIControlStateNormal];
	if(imageHighlighted)
		[button setBackgroundImage:imageHighlighted forState:UIControlStateHighlighted];
	if(imageDisabled)
		[button setBackgroundImage:imageDisabled forState:UIControlStateDisabled];
	if(imageSelected)
		[button setBackgroundImage:imageSelected forState:UIControlStateSelected];
	
	//--- Set title
	[button setTitle:title forState:UIControlStateNormal];
	button.titleLabel.font = font;
	[button setTitleColor:titleColor forState:UIControlStateNormal];
	
	//--- add target action and size to fit
	[button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
	
	[button sizeToFit];
	
	return button;
}

+ (UIButton *)hy_buttonWithTitle:(NSString *)title font:(UIFont *)font titleColor:(UIColor *)titleColor backgroundImage:(UIImage *)imageNormal backgroundImageHighlighted:(UIImage *)imageHighlighted backgroundImageDisabled:(UIImage *)imageDisabled target:(id)target action:(SEL)action
{
	return [UIButton hy_buttonWithTitle:title font:font titleColor:titleColor backgroundImage:imageNormal backgroundImageHighlighted:imageHighlighted backgroundImageDisabled:imageDisabled backgroundImageSelected:nil target:target action:action];
}

+ (UIButton *)hy_buttonWithTitle:(NSString *)title font:(UIFont *)font titleColor:(UIColor *)titleColor backgroundImage:(UIImage *)imageNormal backgroundImageHighlighted:(UIImage *)imageHighlighted target:(id)target action:(SEL)action
{
	return [UIButton hy_buttonWithTitle:title font:font titleColor:titleColor backgroundImage:imageNormal backgroundImageHighlighted:imageHighlighted backgroundImageDisabled:nil backgroundImageSelected:nil target:target action:action];
}

+ (UIButton *)hy_buttonWithTitle:(NSString *)title font:(UIFont *)font titleColor:(UIColor *)titleColor backgroundImage:(UIImage *)imageNormal target:(id)target action:(SEL)action
{
	return [UIButton hy_buttonWithTitle:title font:font titleColor:titleColor backgroundImage:imageNormal backgroundImageHighlighted:nil backgroundImageDisabled:nil backgroundImageSelected:nil target:target action:action];
}
@end
