//
//  RYTabBarController.m
//  BaiSiBuDeJie_OC
//
//  Created by CoderRyanh on 16/5/4.
//  Copyright © 2016年 CoderRyanh. All rights reserved.
//

#import "RYTabBarController.h"

#import "RYNavigationController.h"

#import "RYEssenceViewController.h"
#import "RYNewViewController.h"
#import "RYPublishViewController.h"
#import "RYFriendTrendsViewController.h"
#import "RYMineViewController.h"

#import "RYTabBar.h"

@interface RYTabBarController ()

@end

@implementation RYTabBarController

+ (void)load {
    UITabBarItem *tabBarItem = [UITabBarItem appearanceWhenContainedInInstancesOfClasses:@[self]];
    
    // 标题字体颜色
    NSMutableDictionary *attr = [NSMutableDictionary dictionary];
    attr[NSFontAttributeName] = [UIFont systemFontOfSize:13];
    [tabBarItem setTitleTextAttributes:attr forState:UIControlStateNormal];
    
    // 标题字体被选中的颜色
    NSMutableDictionary *attrSel = [NSMutableDictionary dictionary];
    attrSel[NSForegroundColorAttributeName] = [UIColor darkGrayColor];
    [tabBarItem setTitleTextAttributes:attrSel forState:UIControlStateSelected];
}

- (void)viewDidLoad {
    [super viewDidLoad];

    // 添加子控件
    [self setupAllChildVC];
    
    // 替换系统tabBar
    [self setupTabBar];
    
    // 设置标题按钮
    [self setupAllTitleButton];
}

#pragma mark -
#pragma mark -自定义tabBar

/**
 *  将系统tabBar替换为自定义tabBar
 */
- (void)setupTabBar {
    RYTabBar *tabBar = [[RYTabBar alloc] init];
    // 利用KVC替换系统tabBar
    [self setValue:tabBar forKey:@"tabBar"];
}

#pragma mark -
#pragma mark -子控制器

/**
 *  添加子控制器
 */
- (void)setupAllChildVC {
    RYEssenceViewController *essenceVC = [[RYEssenceViewController alloc] init];
    RYNavigationController *essenceNav = [[RYNavigationController alloc] initWithRootViewController:essenceVC];
    [self addChildViewController:essenceNav];
    
    RYNewViewController *newVC = [[RYNewViewController alloc] init];
    RYNavigationController *newNav = [[RYNavigationController alloc] initWithRootViewController:newVC];
    [self addChildViewController:newNav];
    
    RYFriendTrendsViewController *friendTrendsVC = [[RYFriendTrendsViewController alloc] init];
    RYNavigationController *friendTrendsNav = [[RYNavigationController alloc] initWithRootViewController:friendTrendsVC];
    [self addChildViewController:friendTrendsNav];
    
    RYMineViewController *mineVC = [[RYMineViewController alloc] init];
    RYNavigationController *mineNav = [[RYNavigationController alloc] initWithRootViewController:mineVC];
    [self addChildViewController:mineNav];
}

/**
 *  设置标题按钮
 */
- (void)setupAllTitleButton {
    RYNavigationController *essenceNav = self.childViewControllers[0];
    essenceNav.tabBarItem.title = @"精华";
    essenceNav.tabBarItem.image = [UIImage imageWithOriginalNamed:@"tabBar_essence_icon"];
    essenceNav.tabBarItem.selectedImage = [UIImage imageWithOriginalNamed:@"tabBar_essence_click_icon"];
    
    RYNavigationController *newNav = self.childViewControllers[1];
    newNav.tabBarItem.title = @"新帖";
    newNav.tabBarItem.image = [UIImage imageWithOriginalNamed:@"tabBar_new_icon"];
    newNav.tabBarItem.selectedImage = [UIImage imageWithOriginalNamed:@"tabBar_new_click_icon"];
    
    RYNavigationController *friendTrendsNav = self.childViewControllers[2];
    friendTrendsNav.tabBarItem.title = @"关注";
    friendTrendsNav.tabBarItem.image = [UIImage imageWithOriginalNamed:@"tabBar_friendTrends_icon"];
    friendTrendsNav.tabBarItem.selectedImage = [UIImage imageWithOriginalNamed:@"tabBar_friendTrends_click_icon"];
    
    RYNavigationController *mineNav = self.childViewControllers[3];
    mineNav.tabBarItem.title = @"我的";
    mineNav.tabBarItem.image = [UIImage imageWithOriginalNamed:@"tabBar_me_icon"];
    mineNav.tabBarItem.selectedImage = [UIImage imageWithOriginalNamed:@"tabBar_me_click_icon"];
}

@end
