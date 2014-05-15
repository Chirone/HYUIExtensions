//
//  UIButton+HYExtensions.h
//  Pods
//
//  Created by Hayden Young on 15/05/14.
//
//

#import <UIKit/UIKit.h>

@interface UIButton (HYExtensions)

#pragma mark - Buttons with Titles -

+ (UIButton *)hy_buttonWithType:(UIButtonType)type title:(NSString *)title font:(UIFont *)font titleColor:(UIColor *)titleColor target:(id)target action:(SEL)selector;
+ (UIButton *)hy_buttonWithType:(UIButtonType)type title:(NSString *)title font:(UIFont *)font target:(id)target action:(SEL)action;
+ (UIButton *)hy_buttonWithType:(UIButtonType)type title:(NSString *)title target:(id)target action:(SEL)action;
#pragma mark -
+ (UIButton *)hy_buttonWithTitle:(NSString *)title font:(UIFont *)font fontColor:(UIColor *)fontColor target:(id)target action:(SEL)action;
+ (UIButton *)hy_buttonWithTitle:(NSString *)title target:(id)target action:(SEL)action;
+ (UIButton *)hy_buttonRoundedWithTitle:(NSString *)title target:(id)target action:(SEL)action;



#pragma mark - Buttons with Images -

+ (UIButton *)hy_buttonWithImageNormal:(UIImage *)imageNormal imageHighlighted:(UIImage *)imageHighlighted imageDisabled:(UIImage *)imageDisabled imageSelected:(UIImage *)imageSelected target:(id)target action:(SEL)action;
+ (UIButton *)hy_buttonWithImageNormal:(UIImage *)imageNormal imageHighlighted:(UIImage *)imageHighlighted imageDisabled:(UIImage *)imageDisabled target:(id)target action:(SEL)action;
+ (UIButton *)hy_buttonWithImageNormal:(UIImage *)imageNormal imageHighlighted:(UIImage *)imageHighlighted target:(id)target action:(SEL)action;
+ (UIButton *)hy_buttonWithImageNormal:(UIImage *)imageNormal target:(id)target action:(SEL)action;




#pragma mark - Buttons with Images and Titles -

+ (UIButton *)hy_buttonWithTitle:(NSString *)title font:(UIFont *)font titleColor:(UIColor *)titleColor image:(UIImage *)imageNormal imageHighlighted:(UIImage *)imageHighlighted imageDisabled:(UIImage *)imageDisabled imageSelected:(UIImage *)imageSelected target:(id)target action:(SEL)action;
+ (UIButton *)hy_buttonWithTitle:(NSString *)title font:(UIFont *)font titleColor:(UIColor *)titleColor image:(UIImage *)imageNormal imageHighlighted:(UIImage *)imageHighlighted imageDisabled:(UIImage *)imageDisabled target:(id)target action:(SEL)action;
+ (UIButton *)hy_buttonWithTitle:(NSString *)title font:(UIFont *)font titleColor:(UIColor *)titleColor image:(UIImage *)imageNormal imageHighlighted:(UIImage *)imageHighlighted target:(id)target action:(SEL)action;
+ (UIButton *)hy_buttonWithTitle:(NSString *)title font:(UIFont *)font titleColor:(UIColor *)titleColor image:(UIImage *)imageNormal target:(id)target action:(SEL)action;




#pragma mark - Buttons with Background Images and Titles -
+ (UIButton *)hy_buttonWithTitle:(NSString *)title font:(UIFont *)font titleColor:(UIColor *)titleColor backgroundImage:(UIImage *)imageNormal backgroundImageHighlighted:(UIImage *)imageHighlighted backgroundImageDisabled:(UIImage *)imageDisabled backgroundImageSelected:(UIImage *)imageSelected target:(id)target action:(SEL)action;
+ (UIButton *)hy_buttonWithTitle:(NSString *)title font:(UIFont *)font titleColor:(UIColor *)titleColor backgroundImage:(UIImage *)imageNormal backgroundImageHighlighted:(UIImage *)imageHighlighted backgroundImageDisabled:(UIImage *)imageDisabled target:(id)target action:(SEL)action;
+ (UIButton *)hy_buttonWithTitle:(NSString *)title font:(UIFont *)font titleColor:(UIColor *)titleColor backgroundImage:(UIImage *)imageNormal backgroundImageHighlighted:(UIImage *)imageHighlighted target:(id)target action:(SEL)action;
+ (UIButton *)hy_buttonWithTitle:(NSString *)title font:(UIFont *)font titleColor:(UIColor *)titleColor backgroundImage:(UIImage *)imageNormal target:(id)target action:(SEL)action;

@end
