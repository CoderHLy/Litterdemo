//
//  MyDjHeadView.m
//  党建e家
//
//  Created by Sunweisheng on 2018/10/25.
//  Copyright © 2018年 何龙. All rights reserved.
//

#import "MyDjHeadView.h"

@implementation MyDjHeadView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        _backView = [[UIView alloc] init];
        _backView.backgroundColor = Color(182, 0, 10);
        [self addSubview:_backView];
    }
    return self;
}

@end
