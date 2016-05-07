//
//  UIBarButtonItem+Item.h
//  BaiSiBuDeJie_OC
//
//  Created by CoderRyanh on 16/5/7.
//  Copyright © 2016年 CoderRyanh. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (Item)

+ (UIBarButtonItem *)itemWithimage:(UIImage *)image highlightImage:(UIImage *)highlightImage target:(id)target action:(SEL)action;

+ (UIBarButtonItem *)itemWithimage:(UIImage *)image selectedImage:(UIImage *)selectedImage target:(id)target action:(SEL)action;

@end
