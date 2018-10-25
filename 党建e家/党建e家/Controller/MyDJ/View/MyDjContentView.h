//
//  MyDjContentView.h
//  党建e家
//
//  Created by Sunweisheng on 2018/10/25.
//  Copyright © 2018年 何龙. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MyDjContentView : UIView

@property (nonatomic,strong) UIImageView *leftImageView;
@property (nonatomic,strong) UILabel * textLab;
@property (nonatomic,strong) UIButton *rightBtn;
@property (nonatomic,strong) UIImageView *lineView;

@property (nonatomic,strong) NSArray *imgArr;
@property (nonatomic,strong) NSArray *labArr;

@property (nonatomic,strong) UIButton *loginBtn;

@end

NS_ASSUME_NONNULL_END
