//
//  HLMyDJViewController.m
//  党建e家
//
//  Created by 何龙 on 2018/10/25.
//  Copyright © 2018 何龙. All rights reserved.
//

#import "HLMyDJViewController.h"
<<<<<<< .merge_file_0CnqrG
#import "LoGinViewController.h"
=======
#import "MyDjHeadView.h"
>>>>>>> .merge_file_SjNLLs
@interface HLMyDJViewController ()

@property (nonatomic,strong) MyDjHeadView *djHeadView;

@end

@implementation HLMyDJViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"我的党建";
    [self initHeadView];
}
//初始化headView
-(void)initHeadView
{
    _djHeadView = [[MyDjHeadView alloc] initWithFrame:CGRectMake(0, 65, SCREENWIDTH, 180)];
    _djHeadView.backgroundColor = [UIColor blueColor];
    _djHeadView.djBlock = ^(MyDjHeadView * _Nonnull headView) {
        //跳入登录页面
//        self.navigationController pushViewController:<#(nonnull UIViewController *)#> animated:<#(BOOL)#>
    };
    [self.view addSubview:_djHeadView];
}
@end
