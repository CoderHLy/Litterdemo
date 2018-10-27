//
//  ruleView.m
//  党建e家
//
//  Created by Sunweisheng on 2018/10/26.
//  Copyright © 2018年 何龙. All rights reserved.
//

#import "ruleView.h"

@implementation ruleView{
    UILabel *titleLab;
    UILabel *gradeLab;
    UIImageView *lineView;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        titleLab = [UILabel labelWithText:@"登录APP" alignment:NSTextAlignmentLeft textColor:[UIColor grayColor] font:14 superView:self];
        titleLab.backgroundColor = [UIColor greenColor];
        [titleLab mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerY.equalTo(self.centerY);
            make.left.equalTo(15);
            make.width.equalTo(100);
            make.height.equalTo(30);
        }];
        
        gradeLab = [UILabel labelWithText:@"5" alignment:NSTextAlignmentRight textColor:[UIColor redColor] font:14 superView:self];
        gradeLab.backgroundColor = [UIColor greenColor];
        [gradeLab mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerY.equalTo(self.centerY);
            make.right.equalTo(1);
            make.width.equalTo(100);
            make.height.equalTo(30);
        }];
        
        lineView = [[UIImageView alloc] init];
        lineView.backgroundColor = [UIColor lightGrayColor];
        [self addSubview:lineView];
        [lineView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.bottom.equalTo(self.bottom).offset(0);
            make.width.equalTo(500);
            make.left.equalTo(0);
            make.height.equalTo(1);
        }];
    }
    return self;
}

@end
