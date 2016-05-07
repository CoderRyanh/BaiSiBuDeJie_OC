//
//  RYNavigationController.m
//  BaiSiBuDeJie_OC
//
//  Created by CoderRyanh on 16/5/4.
//  Copyright © 2016年 CoderRyanh. All rights reserved.
//

#import "RYNavigationController.h"

@interface RYNavigationController () <UIGestureRecognizerDelegate>

@end

@implementation RYNavigationController

+ (void)load {
    UINavigationBar *bar = [UINavigationBar appearanceWhenContainedInInstancesOfClasses:@[self]];

    // 设置导航条背景图片
    [bar setBackgroundImage:[UIImage imageNamed:@"navigationbarBackgroundWhite"] forBarMetrics:UIBarMetricsDefault];

    // 设置字体属性
    NSMutableDictionary *attr = [NSMutableDictionary dictionary];
    attr[NSFontAttributeName] = [UIFont boldSystemFontOfSize:20];
    attr[NSForegroundColorAttributeName] = [UIColor blackColor];
    [bar setTitleTextAttributes:attr];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 添加全屏滑动返回手势
    UIPanGestureRecognizer *pan = [[UIPanGestureRecognizer alloc] initWithTarget:self.interactivePopGestureRecognizer.delegate action:@selector(handleNavigationTransition:)];
    pan.delegate = self;
    [self.view addGestureRecognizer:pan];
    // 禁止系统边缘侧滑手势
    self.interactivePopGestureRecognizer.enabled = NO;
}

#pragma mark -
#pragma mark -UIGestureRecognizerDelegate

/**
 *  是否触发手势
 */
- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldReceiveTouch:(UITouch *)touch {
    // 根控制器下取消接收手势
    return self.childViewControllers.count > 1;
}

/**
 *  设置返回按钮样式
 */
- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated {
    if (self.childViewControllers.count > 0) {// 非根控制器
        
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        // 设置图片
        [button setImage:[UIImage imageNamed:@"navigationButtonReturn"] forState:UIControlStateNormal];
        [button setImage:[UIImage imageNamed:@"navigationButtonReturnClick"] forState:UIControlStateHighlighted];
        // 设置标题
        [button setTitle:@"返回" forState:UIControlStateNormal];
        [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [button setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted];
        [button sizeToFit];
        // 设置点击事件
        [button addTarget:self action:@selector(returnButtonClick) forControlEvents:UIControlEventTouchUpInside];
        // 设置内边距
        [button setContentEdgeInsets:UIEdgeInsetsMake(0, -20, 0, 0)];
        
        // 防止点击范围过大
        UIView *view = [[UIView alloc] initWithFrame:button.bounds];
        [view addSubview:button];
        
        viewController.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:view];
    }
    
    [super pushViewController:viewController animated:animated];
}

/**
 *  返回按钮点击事件
 */
- (void)returnButtonClick {
    [self popViewControllerAnimated:YES];
}

@end
