//
//  UIImage+Render.h
//  BaiSiBuDeJie_OC
//
//  Created by CoderRyanh on 16/5/4.
//  Copyright © 2016年 CoderRyanh. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Render)

/**
 *  返回一个未被渲染的图片
 *
 *  @param imageName 图片路径
 *
 *  @return 未被渲染的图片
 */
+ (UIImage *)imageWithOriginalNamed:(NSString *)imageName;

/**
 *  返回一个圆角图片
 *
 *  @return 圆角图片
 */
- (UIImage *)circleImage;

@end
