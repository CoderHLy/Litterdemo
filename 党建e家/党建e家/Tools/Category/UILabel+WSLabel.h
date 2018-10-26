//
//  UILabel+WSLabel.h
//  党建e家
//
//  Created by Sunweisheng on 2018/10/25.
//  Copyright © 2018年 何龙. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UILabel (WSLabel)
+(UILabel *)labWithTextAlign:(NSTextAlignment)textAlignment
                        Font:(CGFloat)fontSize
                     bgColor:(UIColor *)bgColor
                        Text:(NSString *)text
                   textColor:(UIColor *)textColor;

@end

NS_ASSUME_NONNULL_END
