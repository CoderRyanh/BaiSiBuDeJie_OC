//
//  RYEssenceViewController.m
//  BaiSiBuDeJie_OC
//
//  Created by CoderRyanh on 16/5/4.
//  Copyright © 2016年 CoderRyanh. All rights reserved.
//

#import "RYEssenceViewController.h"

@interface RYEssenceViewController ()

@end

@implementation RYEssenceViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor orangeColor];
    
    [self setupNavigationBar];
}

/**
 *  设置导航条内容
 */
- (void)setupNavigationBar {
    // 设置中间标题
    self.navigationItem.titleView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"MainTitle"]];
    
    // 设置左边按钮
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithimage:[UIImage imageNamed:@"nav_item_game_icon"] highlightImage:[UIImage imageNamed:@"nav_item_game_click_icon"] target:self action:@selector(game)];
    
    // 设置右边按钮
    self.navigationItem.rightBarButtonItem = [UIBarButtonItem itemWithimage:[UIImage imageNamed:@"navigationButtonRandom"] highlightImage:[UIImage imageNamed:@"navigationButtonRandomClick"] target:self action:@selector(random)];
}

#pragma mark -
#pragma mark -点击事件

/**
 *  导航条左边按钮点击事件
 */
- (void)game {
    
}

/**
 *  导航条右边按钮点击事件
 */
- (void)random {
    
}

@end
