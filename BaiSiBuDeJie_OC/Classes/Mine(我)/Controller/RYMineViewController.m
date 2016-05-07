//
//  RYMineViewController.m
//  BaiSiBuDeJie_OC
//
//  Created by CoderRyanh on 16/5/4.
//  Copyright © 2016年 CoderRyanh. All rights reserved.
//

#import "RYMineViewController.h"

@interface RYMineViewController ()

@end

@implementation RYMineViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor greenColor];
    
    // 设置导航条内容
    [self setupNavigationBar];
}

/**
 *  设置导航条内容
 */
- (void)setupNavigationBar {
    // 设置中间标题
    self.navigationItem.title = @"我的";
    
    // 设置右边按钮
    UIBarButtonItem *nightModelItem = [UIBarButtonItem itemWithimage:[UIImage imageNamed:@"mine-moon-icon"] selectedImage:[UIImage imageNamed:@"mine-moon-icon-click"] target:self action:@selector(nightModel:)];
    UIBarButtonItem *settingItem = [UIBarButtonItem itemWithimage:[UIImage imageNamed:@"mine-setting-icon"] highlightImage:[UIImage imageNamed:@"mine-setting-icon-click"] target:self action:@selector(setting)];
    self.navigationItem.rightBarButtonItems = @[settingItem, nightModelItem];
}

/**
 *  夜间模式切换
 */
- (void)nightModel:(UIButton *)button {
    button.selected = !button.selected;
}

/**
 *  设置
 */
- (void)setting {
    
}

@end
