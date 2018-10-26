//
//  LoGinViewController.m
//  党建e家
//
//  Created by 黄钦 on 2018/10/25.
//  Copyright © 2018 何龙. All rights reserved.
//

#import "LoGinViewController.h"
#import "View.h"
#import "Masonry.h"
@interface LoGinViewController ()
@end

@implementation LoGinViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"登录";
    View *view = [[View alloc]init];
    [self.view addSubview:view];
    [view mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.equalTo(CGSizeMake(self.view.frame.size.width, self.view.frame.size.height-60));
        make.top.equalTo(60);
        make.left.equalTo(0);
    }];
}

@end
