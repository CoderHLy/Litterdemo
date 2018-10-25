//
//  MyDjContentView.m
//  党建e家
//
//  Created by Sunweisheng on 2018/10/25.
//  Copyright © 2018年 何龙. All rights reserved.
//

#import "MyDjContentView.h"

@implementation MyDjContentView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        //左边小图标
        _leftImageView = [[UIImageView alloc] init];
        _leftImageView.image = [UIImage imageNamed:@""];
        [self addSubview:_leftImageView];
        [_leftImageView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.left.equalTo(10);
            make.width.height.equalTo(30);
            
            
        }];
    }
    return self;
}

@end
