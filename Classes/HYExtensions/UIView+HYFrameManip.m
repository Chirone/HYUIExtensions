//
//  UIView+HYFrameManip.m
//  PhotoBook
//
//  Created by Hayden Young on 25/03/14.
//  Copyright (c) 2014 Hayden Young. All rights reserved.
//

#import "UIView+HYFrameManip.h"

@implementation UIView (HYFrameManip)
- (void)setFrameOriginY:(CGFloat)y
{
	CGRect frame = self.frame;
	frame.origin.y = y;
	self.frame = frame;
}
- (void)setFrameOriginX:(CGFloat)x
{
	CGRect frame = self.frame;
	frame.origin.x = x;
	self.frame = frame;
}
- (void)setFrameOrigin:(CGPoint)origin
{
	CGRect frame = self.frame;
	frame.origin = origin;
	self.frame = frame;
}

- (void)setFrameSizeWidth:(CGFloat)width
{
	CGRect frame = self.frame;
	frame.size.width = width;
	self.frame = frame;
}
- (void)setFrameSizeHeight:(CGFloat)height
{
	CGRect frame = self.frame;
	frame.size.height = height;
	self.frame = frame;
}
- (void)setFrameSize:(CGSize)size
{
	CGRect frame = self.frame;
	frame.size = size;
	self.frame = frame;
}
@end
