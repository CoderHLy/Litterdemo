//
//  UILabel+WSLabel.m
//  党建e家
//
//  Created by Sunweisheng on 2018/10/25.
//  Copyright © 2018年 何龙. All rights reserved.
//

#import "UILabel+WSLabel.h"

@implementation UILabel (WSLabel)
#pragma 伟少
+(UILabel *)labWithTextAlign:(NSTextAlignment)textAlignment
        Font:(CGFloat)fontSize
     bgColor:(UIColor *)color
        Text:(NSString *)text
{
    UILabel *lab = [[UILabel alloc] init];
    lab.textAlignment = textAlignment;
    lab.font = [UIFont systemFontOfSize:fontSize];
    lab.backgroundColor = color;
    lab.text = text;
    return lab;
}

@end
