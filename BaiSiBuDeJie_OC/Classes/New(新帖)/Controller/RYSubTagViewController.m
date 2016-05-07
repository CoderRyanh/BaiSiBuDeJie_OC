//
//  RYSubTagViewController.m
//  BaiSiBuDeJie_OC
//
//  Created by CoderRyanh on 16/5/7.
//  Copyright © 2016年 CoderRyanh. All rights reserved.
//

#import "RYSubTagViewController.h"

#import <AFNetworking.h>
#import <MJExtension.h>
#import <SVProgressHUD.h>

#import "RYSubTagCell.h"
#import "RYSubTag.h"

@interface RYSubTagViewController ()

/** 标签模型数组 */
@property (nonatomic, strong) NSArray<RYSubTag *> *subTagArray;
/** 请求任务 */
@property (nonatomic, weak) NSURLSessionDataTask *task;

@end

@implementation RYSubTagViewController

#pragma mark -
#pragma mark -系统回调

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"推荐标签";
    
    [self setupTableView];
    
    [self loadData];
}

- (BOOL)hidesBottomBarWhenPushed {
    return YES;
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    
    [SVProgressHUD dismiss];
    [self.task cancel];
}

/**
 *  设置tableview相关属性
 */
static NSString * const cellID = @"subTagCell";
- (void)setupTableView {
    // 注册cell
    [self.tableView registerNib:[UINib nibWithNibName:NSStringFromClass([RYSubTagCell class]) bundle:nil] forCellReuseIdentifier:cellID];
    
    self.tableView.backgroundColor = RYColor(215, 215, 215);
    
    // 取消系统分割线
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
}

#pragma mark -
#pragma mark -网络请求

/**
 *  加载数据
 */
- (void)loadData {
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    
    // 请求参数
    NSMutableDictionary *parameters = [NSMutableDictionary dictionary];
    parameters[@"a"] = @"tag_recommend";
    parameters[@"c"] = @"topic";
    parameters[@"action"] = @"sub";
    
    [SVProgressHUD showWithStatus:@"正在加载..."];
    self.task = [manager GET:@"http://api.budejie.com/api/api_open.php" parameters:parameters progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        [SVProgressHUD dismiss];
        self.subTagArray = [RYSubTag mj_objectArrayWithKeyValuesArray:responseObject];
        // 刷新tableview
        [self.tableView reloadData];
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        [SVProgressHUD dismiss];
    }];
    
}

#pragma mark -
#pragma mark -tableView dataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.subTagArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    RYSubTagCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    
    cell.subTag = self.subTagArray[indexPath.row];
    
    return cell;
}

/**
 *  行高
 */
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 60;
}

@end
