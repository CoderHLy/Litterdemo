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
        _imageview = [UIImageView imageWithImage:@"logo" subView:self];
        [_imageview mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(0);
            make.centerX.equalTo(self.centerX);
            make.width.equalTo(180);
            make.height.equalTo(60);
        }];
        
        _nameimageview = [UIImageView imageWithImage:@"登录框" subView:self];
        [_nameimageview mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.imageview.bottom).offset(33);
            make.left.equalTo(30);
            make.right.equalTo(-30);
            make.height.equalTo(39);
        }];
        _passimageview = [UIImageView imageWithImage:@"登录框" subView:self];
        [_passimageview mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.nameimageview.bottom).offset(8);
            make.left.equalTo(30);
            make.right.equalTo(-30);
            make.height.equalTo(39);
        }];
        _loginbnt = [UIButton_UIButton_HuangQinCategory bntWithBGcorol:Color(225, 88, 83) settitle:@"登录" Font:13 cornerRadius:5 masksToBounds:YES superView:self section:@selector(back) Target:self settitlecolor:[UIColor whiteColor]];
        [_loginbnt mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.passimageview.bottom).offset(8);
            make.left.equalTo(30);
            make.right.equalTo(-30);
            make.height.equalTo(39);
        }];
   }
    return self;
}
-(void)back
{
    if (_block)
    {
        _block(self);
    }
}
@end
