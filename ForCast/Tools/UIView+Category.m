//
//  UIView+Category.m
//  ForCast
//
//  Created by zw on 2017/11/11.
//  Copyright © 2017年 zhangwei. All rights reserved.
//

#import "UIView+Category.h"

@implementation UIView (Category)

- (void)setWidth:(CGFloat)width
{
    CGSize size =CGSizeMake(width, self.frame.size.height);
    self.frame =CGRectMake(self.frame.origin.x, self.frame.origin.y, size.width, size.height);
}
- (CGFloat)width
{
    return self.frame.size.width;
}

- (void)setHeight:(CGFloat)height
{
    CGSize size =CGSizeMake(self.frame.size.width, height);
    self.frame =CGRectMake(self.frame.origin.x, self.frame.origin.y, size.width, size.height);
}
- (CGFloat)height
{
    return self.frame.size.height;
}

-(void)setLeft:(CGFloat)left
{
    CGPoint origin = self.frame.origin;
    origin.x = left;
    self.frame = CGRectMake(origin.x, origin.y, self.frame.size.width, self.frame.size.height);
}

-(CGFloat)left
{
    return self.frame.origin.x;
}

-(void)setRight:(CGFloat)right
{
    CGRect frame = self.frame;
    frame.origin.x = right - frame.size.width;
    self.frame = frame;
}

-(CGFloat)right
{
    return self.frame.size.width + self.frame.origin.x;
}

-(void)setTop:(CGFloat)top
{
    CGRect frame = self.frame;
    frame.origin.y = top;
    self.frame = frame;
}

-(CGFloat)top
{
    return self.frame.origin.y;
}

- (CGFloat)bottom {
    return self.frame.origin.y + self.frame.size.height;
}

- (void)setBottom:(CGFloat)bottom {
    CGRect frame = self.frame;
    frame.origin.y = bottom - frame.size.height;
    self.frame = frame;
}

- (void)setCenterX:(CGFloat)centerX
{
    CGPoint center = self.center;
    center.x = centerX;
    self.center = center;
}

- (CGFloat)centerX
{
    return self.center.x;
}

- (void)setCenterY:(CGFloat)centerY
{
    CGPoint center = self.center;
    center.y = centerY;
    self.center = center;
}

- (CGFloat)centerY
{
    return self.center.y;
}

- (void)setSize:(CGSize)size
{
    CGRect frame = self.frame;
    frame.size = size;
    self.frame = frame;
}

- (CGSize)size
{
    return self.frame.size;
}

@end
