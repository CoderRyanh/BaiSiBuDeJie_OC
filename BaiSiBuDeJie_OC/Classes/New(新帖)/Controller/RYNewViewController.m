//
//  RYNewViewController.m
//  BaiSiBuDeJie_OC
//
//  Created by CoderRyanh on 16/5/4.
//  Copyright © 2016年 CoderRyanh. All rights reserved.
//

#import "RYNewViewController.h"

#import "RYSubTagViewController.h"

@interface RYNewViewController ()

@end

@implementation RYNewViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor yellowColor];
    
    // 设置导航条内容
    [self setupNavigationBar];
}

/**
 *  设置导航条内容
 */
- (void)setupNavigationBar {
    // 设置中间标题
    self.navigationItem.titleView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"MainTitle"]];
    
    // 设置左边按钮
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithimage:[UIImage imageNamed:@"MainTagSubIcon"] highlightImage:[UIImage imageNamed:@"MainTagSubIconClick"] target:self action:@selector(subTag)];
}

/**
 *  推荐标签
 */
- (void)subTag {
    RYSubTagViewController *subTagVC = [[RYSubTagViewController alloc] init];
    [self.navigationController pushViewController:subTagVC animated:YES];
}

@end
