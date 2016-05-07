//
//  RYFriendTrendsViewController.m
//  BaiSiBuDeJie_OC
//
//  Created by CoderRyanh on 16/5/4.
//  Copyright © 2016年 CoderRyanh. All rights reserved.
//

#import "RYFriendTrendsViewController.h"

@interface RYFriendTrendsViewController ()

@end

@implementation RYFriendTrendsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor purpleColor];
    
    // 设置导航条内容
    [self setupNavigationBar];
}

/**
 *  设置导航条内容
 */
- (void)setupNavigationBar {
    // 设置中间标题
    self.navigationItem.title = @"我的关注";
    
    // 设置左边按钮
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithimage:[UIImage imageNamed:@"friendsRecommentIcon"] highlightImage:[UIImage imageNamed:@"friendsRecommentIcon-click"] target:self action:@selector(friendsRecomment)];
}

- (void)friendsRecomment {
    
}

@end
