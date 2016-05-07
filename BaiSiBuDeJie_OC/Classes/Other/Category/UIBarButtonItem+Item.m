//
//  UIBarButtonItem+Item.m
//  BaiSiBuDeJie_OC
//
//  Created by CoderRyanh on 16/5/7.
//  Copyright © 2016年 CoderRyanh. All rights reserved.
//

#import "UIBarButtonItem+Item.h"

@implementation UIBarButtonItem (Item)

+ (UIBarButtonItem *)itemWithimage:(UIImage *)image highlightImage:(UIImage *)highlightImage target:(id)target action:(SEL)action {
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    // 设置图片
    [button setImage:image forState:UIControlStateNormal];
    [button setImage:highlightImage forState:UIControlStateHighlighted];
    // 添加监听事件
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    // 自适应大小
    [button sizeToFit];
    // 用UIview包装
    // 解决导航条按钮点击范围过大的问题
    UIView *view = [[UIView alloc] initWithFrame:button.bounds];
    [view addSubview:button];
    
    return [[UIBarButtonItem alloc] initWithCustomView:view];
}

+ (UIBarButtonItem *)itemWithimage:(UIImage *)image selectedImage:(UIImage *)selectedImage target:(id)target action:(SEL)action {
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    // 设置图片
    [button setImage:image forState:UIControlStateNormal];
    [button setImage:selectedImage forState:UIControlStateSelected];
    // 添加监听事件
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    // 自适应大小
    [button sizeToFit];
    // 用UIview包装
    // 解决导航条按钮点击范围过大的问题
    UIView *view = [[UIView alloc] initWithFrame:button.bounds];
    [view addSubview:button];
    
    return [[UIBarButtonItem alloc] initWithCustomView:view];
}

@end
