//
//  View.m
//  党建e家
//
//  Created by 黄钦 on 2018/10/25.
//  Copyright © 2018 何龙. All rights reserved.
//

#import "View.h"
#import "Masonry.h"
@implementation View

-(id)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame])
    {
        self.backgroundColor = Color(182, 0, 10);
        _imageview = [[UIImageView alloc]init];
        _imageview.image = [UIImage imageNamed:@"logo"];
        [self addSubview:_imageview];
        [_imageview mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(0);
            make.centerX.equalTo(self.centerX);
            make.width.equalTo(180);
            make.height.equalTo(60);
        }];
        _nameimageview = [[UIImageView alloc]init];
        _nameimageview.image = [UIImage imageNamed:@"登录框"];
        [self addSubview:_nameimageview];
        [_nameimageview mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.imageview.bottom).offset(33);
            make.left.equalTo(30);
            make.right.equalTo(-30);
            make.height.equalTo(39);
        }];
        _passimageview = [[UIImageView alloc]init];
        _passimageview.image = [UIImage imageNamed:@"登录框"];
        [self addSubview:_passimageview];
        [_passimageview mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.nameimageview.bottom).offset(8);
            make.left.equalTo(30);
            make.right.equalTo(-30);
            make.height.equalTo(39);
        }];
        _loginbnt = [UIButton buttonWithType:UIButtonTypeCustom];
//        [_loginbnt setImage:[UIImage imageNamed:@"登录btn"] forState:UIControlStateNormal];
        _loginbnt.backgroundColor = [UIColor lightGrayColor];
        [_loginbnt setTitle:@"登录" forState:UIControlStateNormal];
        _loginbnt.titleLabel.font = [UIFont systemFontOfSize:13];
        _loginbnt.layer.cornerRadius = 5;
        _loginbnt.layer.masksToBounds = YES;
        [_loginbnt setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [self addSubview:_loginbnt];
        [_loginbnt mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.passimageview.bottom).offset(8);
            make.left.equalTo(30);
            make.right.equalTo(-30);
            make.height.equalTo(39);
        }];
   }
    return self;
}

@end
