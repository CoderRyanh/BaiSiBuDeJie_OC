//
//  UIImage+Render.m
//  BaiSiBuDeJie_OC
//
//  Created by CoderRyanh on 16/5/4.
//  Copyright © 2016年 CoderRyanh. All rights reserved.
//

#import "UIImage+Render.h"

@implementation UIImage (Render)

/**
 *  返回一个未被渲染的图片
 *
 *  @param imageName 图片路径
 *
 *  @return 未被渲染的图片
 */
+ (UIImage *)imageWithOriginalNamed:(NSString *)imageName {
    UIImage *image = [UIImage imageNamed:imageName];
    
    return [image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
}

/**
 *  返回一个圆角图片
 *
 *  @return 圆角图片
 */
- (UIImage *)circleImage {
    // 开启图形上下文
    UIGraphicsBeginImageContextWithOptions(self.size, NO, 0);
    // 构造圆形裁剪路径
    UIBezierPath *clipPath = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(0, 0, self.size.width, self.size.height)];
    // 设置为裁剪区域
    [clipPath addClip];
    // 绘图
    [self drawAtPoint:CGPointZero];
    // 从图形上下文中获取图片
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    // 关闭图形上下文
    UIGraphicsEndImageContext();
    
    return image;
}

@end
