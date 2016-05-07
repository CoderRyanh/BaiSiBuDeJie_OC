//
//  UIView+Frame.m
//  BaiSiBuDeJie_OC
//
//  Created by CoderRyanh on 16/5/4.
//  Copyright © 2016年 CoderRyanh. All rights reserved.
//

#import "UIView+Frame.h"

@implementation UIView (Frame)
/*
 
 @property CGFloat ry_x;
 @property CGFloat ry_y;
 @property CGFloat ry_width;
 @property CGFloat ry_height;
 @property CGFloat ry_centerX;
 @property CGFloat ry_centerY;
 */

- (CGFloat)ry_x {
    return self.frame.origin.x;
}

- (void)setRy_x:(CGFloat)ry_x {
    CGRect frame = self.frame;
    frame.origin.x = ry_x;
    self.frame = frame;
}

- (CGFloat)ry_y {
    return self.frame.origin.y;
}

- (void)setRy_y:(CGFloat)ry_y {
    CGRect frame = self.frame;
    frame.origin.y = ry_y;
    self.frame = frame;
}

- (CGFloat)ry_width {
    return self.frame.size.width;
}

- (void)setRy_width:(CGFloat)ry_width {
    CGRect frame = self.frame;
    frame.size.width = ry_width;
    self.frame = frame;
}

- (CGFloat)ry_height {
    return self.frame.size.height;
}

- (void)setRy_height:(CGFloat)ry_height {
    CGRect frame = self.frame;
    frame.size.height = ry_height;
    self.frame = frame;
}

- (CGFloat)ry_centerX {
    return self.center.x;
}

- (void)setRy_centerX:(CGFloat)ry_centerX {
    CGPoint center = self.center;
    center.x = ry_centerX;
    self.center = center;
}

- (CGFloat)ry_centerY {
    return self.center.y;
}

- (void)setRy_centerY:(CGFloat)ry_centerY {
    CGPoint center = self.center;
    center.y = ry_centerY;
    self.center = center;
}

@end
