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
@end
