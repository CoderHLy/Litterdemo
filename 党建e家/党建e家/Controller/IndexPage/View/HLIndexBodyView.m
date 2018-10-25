//
//  HLIndexBodyView.m
//  党建e家
//
//  Created by 何龙 on 2018/10/25.
//  Copyright © 2018 何龙. All rights reserved.
//

#import "HLIndexBodyView.h"

@implementation HLIndexBodyView{
    UIImageView *_headImageView;
    UIImageView *_bodyImageView;
    UIImageView *_footerImageView;
}

-(id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self initBackImageView];
        
        
    }
    return self;
}
-(void)initBackImageView{
    _headImageView = [[UIImageView alloc] init];
    _headImageView.image = [UIImage imageNamed:@"bt_bg"];
    [self addSubview:_headImageView];
    [_headImageView makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(0);
        make.top.equalTo(0);
        make.size.equalTo(CGSizeMake(SCREENWIDTH, SCREENHEIGHT / 4));
    }];
    
    _bodyImageView = [[UIImageView alloc] init];
    _bodyImageView.image = [UIImage imageNamed:@"banner01"];
    [self addSubview:_bodyImageView];
    [_bodyImageView makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(0);
        make.top.equalTo(self->_headImageView.bottom);
        make.size.equalTo(CGSizeMake(SCREENWIDTH, SCREENHEIGHT / 8));
    }];
    
    _footerImageView = [[UIImageView alloc] init];
    _footerImageView.image = [UIImage imageNamed:@"special_column"];
    [self addSubview:_footerImageView];
    [_footerImageView makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(0);
        make.top.equalTo(self->_bodyImageView.bottom);
        make.size.equalTo(CGSizeMake(SCREENWIDTH, SCREENHEIGHT / 4));
    }];
}


@end
