//
//  UILabel+UILabel_Category.m
//  党建e家
//
//  Created by 何龙 on 2018/10/25.
//  Copyright © 2018 何龙. All rights reserved.
//

#import "UILabel+UILabel_Category.h"

@implementation UILabel (UILabel_Category)
#pragma mark - 何龙。
+(UILabel *)labelWithText:(NSString *)text
                alignment:(NSTextAlignment)alignment
                textColor:(UIColor *)color
                     font:(CGFloat)font
                superView:(UIView *)superView
{
    UILabel *label = [[UILabel alloc] init];
    label.text = text;
    label.numberOfLines = 0;
    label.textAlignment = alignment;
    label.textColor = color;
    label.font = [UIFont systemFontOfSize:font];
    [superView addSubview:label];
    return label;
}
@end
