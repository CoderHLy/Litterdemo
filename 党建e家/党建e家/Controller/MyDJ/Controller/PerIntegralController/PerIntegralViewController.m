//
//  PerIntegralViewController.m
//  党建e家
//
//  Created by Sunweisheng on 2018/10/26.
//  Copyright © 2018年 何龙. All rights reserved.
//

#import "PerIntegralViewController.h"
#import "MyDjHeadView.h"
#import "PerIntergralView.h"
@interface PerIntegralViewController ()

@property (nonatomic,strong) MyDjHeadView *djHeadView;
@property (nonatomic,strong) PerIntergralView *perIntergralView;

@property (nonatomic,strong) UIScrollView *scrollView;

@end

@implementation PerIntegralViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"个人量化积分";
    
    //初始化scrollView
    [self initScrollerView];
    
    //初始化头部视图
    [self initHeadView];
    
    //初始化积分明细视图和阴影部分视图
    [self initIntegralDetailView];
}

//初始化scrollView
-(void)initScrollerView
{
    _scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, SCREENWIDTH, SCREENHEIGHT)];
    _scrollView.userInteractionEnabled = YES;
    _scrollView.bounces = NO;
    _scrollView.contentSize = CGSizeMake(SCREENWIDTH, 1000);
    [self.view addSubview:_scrollView];
}


//初始化headView
-(void)initHeadView
{
    _djHeadView = [[MyDjHeadView alloc] initWithFrame:CGRectMake(0, 0, SCREENWIDTH, 160)];
    _djHeadView.headImgBtn.hidden = YES;
    _djHeadView.userNameLab.hidden = YES;
    _djHeadView.backImgView.image = [UIImage imageNamed:@"integral_bg"];
    [self.scrollView addSubview:_djHeadView];
}

//初始化积分明细视图和阴影部分视图
-(void)initIntegralDetailView
{
    _perIntergralView = [[PerIntergralView alloc] initWithFrame:CGRectMake(0, 160, SCREENWIDTH, 100)];
    [self.scrollView addSubview:_perIntergralView];
    
}
@end
