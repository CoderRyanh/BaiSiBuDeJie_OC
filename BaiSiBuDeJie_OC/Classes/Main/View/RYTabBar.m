//
//  RYTabBar.m
//  BaiSiBuDeJie_OC
//
//  Created by CoderRyanh on 16/5/4.
//  Copyright © 2016年 CoderRyanh. All rights reserved.
//

#import "RYTabBar.h"

@interface RYTabBar ()

/** plusButton */
@property (nonatomic, weak) UIButton *plusButton;

@end

@implementation RYTabBar

#pragma mark -
#pragma mark -懒加载

- (UIButton *)plusButton {
    if (_plusButton == nil) {
        UIButton *plusButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [plusButton setImage:[UIImage imageWithOriginalNamed:@"tabBar_publish_icon"] forState:UIControlStateNormal];
        [plusButton setImage:[UIImage imageWithOriginalNamed:@"tabBar_publish_click_icon"] forState:UIControlStateHighlighted];
        [plusButton addTarget:self action:@selector(plusButtonClick:) forControlEvents:UIControlEventTouchUpInside];
        // 自适应大小
        [plusButton sizeToFit];
        [self addSubview:plusButton];
        _plusButton = plusButton;
    }
    
    return _plusButton;
}

#pragma mark -
#pragma mark -事件

/**
 *  plusButton点击事件
 */
- (void)plusButtonClick:(UIButton *)button {
    
}

#pragma mark -
#pragma mark -系统回调

/**
 *  布局子控件
 */
- (void)layoutSubviews {
    [super layoutSubviews];

    // 重新调整已添加到tabBar上的tabBarButton的位置
    
    NSInteger count = self.items.count + 1;
    
    CGFloat x = 0;
    CGFloat y = 0;
    CGFloat width = self.ry_width / count;
    CGFloat height = self.ry_height;
    NSInteger i = 0;
    for (UIControl *tabBarButton in self.subviews) {
        // 取出tabBarButton
        if (![tabBarButton isKindOfClass:NSClassFromString(@"UITabBarButton")]) continue;
        
        if (i == 2) {
            i += 1;
        }
        tabBarButton.frame = CGRectMake(x + i * width, y, width, height);
        i++;
    }

    self.plusButton.center = CGPointMake(self.ry_width * 0.5, self.ry_height * 0.5);
}

@end


















