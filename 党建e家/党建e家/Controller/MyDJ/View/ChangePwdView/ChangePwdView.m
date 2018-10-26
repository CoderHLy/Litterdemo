//
//  ChangePwdView.m
//  党建e家
//
//  Created by Sunweisheng on 2018/10/26.
//  Copyright © 2018年 何龙. All rights reserved.
//

#import "ChangePwdView.h"

@implementation ChangePwdView

-(id)initWithFrame:(CGRect)frame
{
    if(self = [super initWithFrame:frame])
    {
        _array = [NSArray arrayWithObjects:@"旧密码:", @"新密码:", @"确认新密码:", nil];
        [self layoutIfNeeded];
        float originY = 20;
        for(int i = 0; i < 3; ++i)
        {
            _titleLabel = [[UILabel alloc] init];
            _titleLabel.textAlignment = NSTextAlignmentRight;
            _titleLabel.font = [UIFont systemFontOfSize:18];
            _titleLabel.text = _array[i];
            [self addSubview:_titleLabel];
            [_titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
                make.top.equalTo(originY);
                make.right.equalTo(-SCREENWIDTH + 110);
                make.height.equalTo(40);
                make.width.equalTo(120);
            }];
            
            [self layoutIfNeeded];
            originY = self.titleLabel.frame.origin.y + self.titleLabel.frame.size.height + 40;
        }
        
        _oldPwdField = [[UITextField alloc] init];
        [self addSubview:_oldPwdField];
        [_oldPwdField mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(20);
            make.left.equalTo(self.titleLabel.right).offset(20);
            make.height.equalTo(40);
            make.width.equalTo(230);
        }];
        
        _OneNewPwdField = [[UITextField alloc] init];
        [self addSubview:_OneNewPwdField];
        [_OneNewPwdField mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.oldPwdField.bottom).offset(40);
            make.left.equalTo(self.titleLabel.right).offset(20);
            make.height.equalTo(40);
            make.width.equalTo(230);
        }];
        
        _sureNewPwdField = [[UITextField alloc] init];
        [self addSubview:_sureNewPwdField];
        [_sureNewPwdField mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.OneNewPwdField.bottom).offset(40);
            make.left.equalTo(self.titleLabel.right).offset(20);
            make.height.equalTo(40);
            make.width.equalTo(230);
        }];
        //确认修改
        _sureBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _sureBtn.backgroundColor = [UIColor whiteColor];
        _sureBtn.userInteractionEnabled = YES;
        [_sureBtn setTitle:@"确认修改" forState:UIControlStateNormal];
        [_sureBtn addTarget:self action:@selector(pressChangePwdBtn) forControlEvents:UIControlEventTouchUpInside];
        [_sureBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        _sureBtn.backgroundColor = Color(27, 89, 169);
        _sureBtn.layer.masksToBounds = YES;
        _sureBtn.layer.cornerRadius = 10;
        [self addSubview:_sureBtn];
        [_sureBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(originY + 20);
            make.centerX.equalTo(self.centerX);
            make.height.equalTo(60);
            make.left.equalTo(25);
            make.width.equalTo(SCREENWIDTH - 50);
        }];
    }
    return self;
}

-(void)pressChangePwdBtn
{
    if(_block)
    {
        _block(self);
    }
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self endEditing:YES];
}

@end
