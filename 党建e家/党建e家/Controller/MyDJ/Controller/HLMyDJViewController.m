//
//  HLMyDJViewController.m
//  党建e家
//
//  Created by 何龙 on 2018/10/25.
//  Copyright © 2018 何龙. All rights reserved.
//

#import "HLMyDJViewController.h"

#import "LoGinViewController.h"

#import "MyDjHeadView.h"
#import "MyDjContentView.h"
@interface HLMyDJViewController ()<MyDjContentViewDelegate>

@property (nonatomic,strong) MyDjHeadView *djHeadView;

@property (nonatomic,strong) MyDjContentView *myDjContentView;

@end

@implementation HLMyDJViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"我的党建";\
    //初始化headView
    [self initHeadView];
    //初始化内容View
    [self initContentView];
}
//初始化headView
-(void)initHeadView
{
    _djHeadView = [[MyDjHeadView alloc] initWithFrame:CGRectMake(0, 65, SCREENWIDTH, 160)];
    __weak typeof(self) weakSelf = self;
    _djHeadView.djBlock = ^(MyDjHeadView * _Nonnull headView) {
        //跳入登录页面
        [weakSelf.navigationController pushViewController:[[LoGinViewController alloc] init] animated:YES];
    };
    [self.view addSubview:_djHeadView];
}

//初始化内容View
-(void)initContentView
{
    _myDjContentView = [[MyDjContentView alloc] initWithFrame:CGRectMake(0, 160 + 65, SCREENWIDTH, 280)];
    _myDjContentView.userInteractionEnabled = YES;
    __weak typeof(self) weakSelf = self;
    _myDjContentView.exitBlock = ^(MyDjContentView * _Nonnull myDjContentView) {
        [weakSelf.navigationController pushViewController:[[LoGinViewController alloc] init] animated:YES];
    };
    _myDjContentView.delegate = self;
    [self.view addSubview:_myDjContentView];
}

- (void)contentViewJumpVC:(NSInteger)tag
{
    NSLog(@"tag = %ld", (long)tag);
    //判断tag值 登录 不同的页面。
//    [self.navigationController pushViewController:[[LoGinViewController alloc] init] animated:YES];
}

@end
