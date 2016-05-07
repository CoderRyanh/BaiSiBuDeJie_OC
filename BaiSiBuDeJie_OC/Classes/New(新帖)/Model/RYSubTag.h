//
//  RYSubTag.h
//  BaiSiBuDeJie_OC
//
//  Created by CoderRyanh on 16/5/7.
//  Copyright © 2016年 CoderRyanh. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RYSubTag : NSObject

/** 头像 */
@property (nonatomic, strong) NSString *image_list;
/** 标签名 */
@property (nonatomic, strong) NSString *theme_name;
/** 订阅数 */
@property (nonatomic, assign) NSInteger sub_number;

@end
