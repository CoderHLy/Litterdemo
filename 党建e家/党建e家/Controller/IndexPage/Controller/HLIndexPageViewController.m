//
//  HLIndexPageViewController.m
//  党建e家
//
//  Created by 何龙 on 2018/10/25.
//  Copyright © 2018 何龙. All rights reserved.
//

#import "HLIndexPageViewController.h"
#import "HLMyDJViewController.h"
#import "SLBannerView.h"
#import "HLBannerViewModel.h"
#import "HLBannerModel.h"
@interface HLIndexPageViewController ()<SLBannerViewDelegate>

@end

@implementation HLIndexPageViewController{
    HLIndexBodyView *_bodyView;
    UIScrollView *_scrollView;
    SLBannerView *_bannerView;
    HLBannerViewModel *_bannerViewModel;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.edgesForExtendedLayout = UIRectEdgeNone | UIRectEdgeBottom;
    
    [self initHeaderView];
    [self initScrollView];
    // Do any additional setup after loading the view.

}
#pragma mark - 设置导航栏样式
-(void)initHeaderView
{
    self.navigationController.title = @"首页";
    //添加左侧logo
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, -8, 130, 35)];
    imageView.image = [UIImage imageNamed:@"logo"];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:imageView];
    
    //添加登录按钮
    UIButton *btn = [UIButton buttonWithType:(UIButtonTypeCustom)];
    [btn setTitle:@"登录" forState:(UIControlStateNormal)];
    [btn addTarget:self action:@selector(login) forControlEvents:(UIControlEventTouchUpInside)];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:btn];
}
-(void)login
{
    [self.navigationController pushViewController:[[HLMyDJViewController alloc] init] animated:YES];
}

#pragma mark - 设置轮播图
-(void)initScrollView
{
    //初始化scrollView
    _scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, SCREENWIDTH, SCREENHEIGHT - 64)];
    _scrollView.contentSize = CGSizeMake(SCREENWIDTH, SCREENHEIGHT * 5 / 8 + 220);
    [self.view addSubview:_scrollView];
    
    [self initBannerView];
    [self initBodyView];
}
#pragma mark - 设置bannerView
-(void)initBannerView
{
    _bannerView = [[SLBannerView alloc] init];
    _bannerView.delegate = self;
    [_scrollView addSubview:_bannerView];
    [_bannerView makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(0);
        make.top.equalTo(0);
        make.size.equalTo(CGSizeMake(SCREENWIDTH, 220));
    }];
    
    
    _bannerViewModel = [[HLBannerViewModel alloc] init];
    [_bannerViewModel getBannerArr:^(NSMutableArray * _Nonnull arr) {
        NSMutableArray *imageArr = [NSMutableArray array];
        NSMutableArray *titlesArr = [NSMutableArray array];
        for (HLBannerModel *banner in arr) {
            [imageArr addObject:banner.imgUrl];
            [titlesArr addObject:banner.title];
        }
        self->_bannerView.slImages = imageArr;
        self->_bannerView.slTitles = titlesArr;
    }];
}
#pragma mark - 设置bodyView
-(void)initBodyView{
    _bodyView = [[HLIndexBodyView alloc] init];
    _bodyView.delegate = self;
    [_scrollView addSubview:_bodyView];
    [_bodyView makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(0);
        make.top.equalTo(220);
        make.size.equalTo(CGSizeMake(SCREENWIDTH, SCREENHEIGHT * 5 / 8));
    }];
}

#pragma mark - bodyView的delegate方法
-(void)headerItemDidClicked:(NSInteger)tag
{
    NSLog(@"headerItem.tag = %ld", tag);
}
-(void)footerItemDidClicked:(NSInteger)tag
{
    NSLog(@"footerItem.tag = %ld", tag);
}

#pragma mark - bannerView的delegate方法
-(void)bannerView:(SLBannerView *)banner didClickImagesAtIndex:(NSInteger)index
{
    NSLog(@"bannerView.index = %ld", index);
}
@end
