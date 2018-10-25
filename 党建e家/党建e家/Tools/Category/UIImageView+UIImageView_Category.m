//
//  UIImageView+UIImageView_Category.m
//  党建e家
//
//  Created by 何龙 on 2018/10/25.
//  Copyright © 2018 何龙. All rights reserved.
//

#import "UIImageView+UIImageView_Category.h"

@implementation UIImageView (UIImageView_Category)
#pragma mark - 何龙，快速创建imageView
+(UIImageView *)imageName:(NSString *)name
                superView:(UIView *)superView
                    touch:(BOOL)touch
{
    UIImageView *imageView = [[UIImageView alloc] init];
    imageView.image = [UIImage imageNamed:name];
    [superView addSubview:imageView];
    imageView.userInteractionEnabled = touch;
    return imageView;
}
@end
