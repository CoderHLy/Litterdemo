//
//  UIButton+UIButton_HuangQinCategory.m
//  党建e家
//
//  Created by 黄钦 on 2018/10/26.
//  Copyright © 2018 何龙. All rights reserved.
//

#import "UIButton+UIButton_HuangQinCategory.h"

@implementation UIButton_UIButton_HuangQinCategory

+(UIButton *)bntWithBGcorol:(UIColor *)corol settitle:(NSString *)title Font:(CGFloat)font cornerRadius:(NSInteger)corner masksToBounds:(BOOL)mask superView:(nonnull UIView *)superView section:(SEL)action Target:(id)target settitlecolor:(UIColor *)titlecorol
{
    UIButton *bnt = [UIButton buttonWithType:UIButtonTypeCustom];
    bnt.backgroundColor = corol;
    [bnt setTitle:title forState:UIControlStateNormal];
    [bnt setTitleColor:titlecorol forState:UIControlStateNormal];
    bnt.titleLabel.font = [UIFont systemFontOfSize:font];
    bnt.layer.cornerRadius = corner;
    bnt.layer.masksToBounds = mask;
    [bnt addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    [superView addSubview:bnt];
    return bnt;
}

@end
