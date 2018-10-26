//
//  UIButton+UIButton_Category.m
//  党建e家
//
//  Created by 何龙 on 2018/10/25.
//  Copyright © 2018 何龙. All rights reserved.
//

#import "UIButton+UIButton_Category.h"

@implementation UIButton (UIButton_Category)
#pragma mark - 何龙。首页
+(UIButton *)buttonWithTag:(NSInteger)tag
                    Target:(id)target
                  selector:(SEL)action
superView:(nonnull UIView *)superView
{
    UIButton *btn = [UIButton buttonWithType:(UIButtonTypeCustom)];
    btn.tag = tag;
    [btn addTarget:target action:action forControlEvents:(UIControlEventTouchUpInside)];
    [superView addSubview:btn];
    return btn;
}

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
