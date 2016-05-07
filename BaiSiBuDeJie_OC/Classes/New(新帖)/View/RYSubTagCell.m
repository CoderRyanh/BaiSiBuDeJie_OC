//
//  RYSubTagCell.m
//  BaiSiBuDeJie_OC
//
//  Created by CoderRyanh on 16/5/7.
//  Copyright © 2016年 CoderRyanh. All rights reserved.
//

#import "RYSubTagCell.h"

#import <UIImageView+WebCache.h>

#import "RYSubTag.h"

@interface RYSubTagCell ()

// 头像
@property (weak, nonatomic) IBOutlet UIImageView *iconImageView;
// 标题
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
// 订阅数
@property (weak, nonatomic) IBOutlet UILabel *subTitleLable;

@end

@implementation RYSubTagCell

- (void)awakeFromNib {
    [super awakeFromNib];
    
}

- (void)setSubTag:(RYSubTag *)subTag {
    _subTag = subTag;
    
    // 加载头像
    UIImage *placeholderImage = [[UIImage imageNamed:@"defaultUserIcon"] circleImage];
    [self.iconImageView sd_setImageWithURL:[NSURL URLWithString:subTag.image_list] placeholderImage:placeholderImage completed:^(UIImage *image, NSError *error, SDImageCacheType cacheType, NSURL *imageURL) {
        if (image == nil) return;
        self.iconImageView.image = [image circleImage];
    }];
    
    // 标题
    self.titleLabel.text = subTag.theme_name;
    
    // 订阅数
    CGFloat number = subTag.sub_number;
    NSString *numStr = [NSString stringWithFormat:@"%lf人订阅", number];
    if (number > 10000) {
         numStr = [NSString stringWithFormat:@"%.1lf万人订阅", number / 10000];
        // 取出末尾.0
        numStr = [numStr stringByReplacingOccurrencesOfString:@".0" withString:@""];
    }
    
    self.subTitleLable.text = numStr;
    
}

- (void)setFrame:(CGRect)frame {
    frame.size.height -= 1;
    
    [super setFrame:frame];
}

@end
