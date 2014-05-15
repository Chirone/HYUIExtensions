//
//  UIView+HYFrameManip.h
//  PhotoBook
//
//  Created by Hayden Young on 25/03/14.
//  Copyright (c) 2014 Hayden Young. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (HYFrameManip)

- (void)setFrameOriginY:(CGFloat)y;
- (void)setFrameOriginX:(CGFloat)x;
- (void)setFrameOrigin:(CGPoint)origin;
- (void)setFrameSizeWidth:(CGFloat)width;
- (void)setFrameSizeHeight:(CGFloat)height;
- (void)setFrameSize:(CGSize)size;

@end
