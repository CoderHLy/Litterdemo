//
//  HLIndexPageViewController.m
//  党建e家
//
//  Created by 何龙 on 2018/10/25.
//  Copyright © 2018 何龙. All rights reserved.
//

#import "HLIndexPageViewController.h"
#import "HLMyDJViewController.h"

@interface HLIndexPageViewController ()

@end

@implementation HLIndexPageViewController{
    HLIndexBodyView *_bodyView;
    UIScrollView *_scrollView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.edgesForExtendedLayout = UIRectEdgeNone | UIRectEdgeBottom;
    
    [self initHeaderView];
    [self initScrollView];
    [self initBodyView];
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
@end
