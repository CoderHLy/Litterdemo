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

@implementation HLIndexPageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self initHeaderView];
    
    self.navigationController.title = @"首页";
    // Do any additional setup after loading the view.
}

-(void)initHeaderView
{
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
@end
