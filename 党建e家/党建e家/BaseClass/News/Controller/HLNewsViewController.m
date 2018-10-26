//
//  HLNewsViewController.m
//  党建e家
//
//  Created by 何龙 on 2018/10/26.
//  Copyright © 2018 何龙. All rights reserved.
//

#import "HLNewsViewController.h"
#import "HLNewsTableViewCell.h"
#import "HLNewsModel.h"
#import "HLNewsViewModel.h"
#import "HLDetailNewsViewController.h"
@interface HLNewsViewController ()<UITableViewDelegate, UITableViewDataSource>

@end
#define cellId @"cell"
#define secCellId @"secCellId"
@implementation HLNewsViewController{
    UITableView *_aTableView;
    NSMutableArray *_objArr;
    AFHTTPSessionManager *_manager;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.edgesForExtendedLayout = UIRectEdgeNone | UIRectEdgeBottom;
    NSLog(@"urlType = %@", _urlType);
    [self initModel];
    [self initTableView];
    // Do any additional setup after loading the view.
}
#pragma mark - 初始化tableView
-(void)initTableView
{
    _aTableView = [[UITableView alloc] initWithFrame:CGRectZero style:(UITableViewStylePlain)];
    _aTableView.delegate = self;
    _aTableView.dataSource = self;
    _aTableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    _aTableView.showsVerticalScrollIndicator = NO;
    [_aTableView registerClass:[HLNewsTableViewCell class] forCellReuseIdentifier:cellId];
    [self.view addSubview:_aTableView];
    [_aTableView makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(0);
        make.top.equalTo(0);
        make.size.equalTo(CGSizeMake(SCREENWIDTH, SCREENHEIGHT - 64));
    }];
}
-(void)initModel
{
    _objArr = [NSMutableArray array];
    _manager = [[AFHTTPSessionManager alloc] init];
    NSDictionary *dic = @{@"page":@"1",
                          @"rows":@"10",
                          @"type":_urlType};
    [_manager POST:@"http://211.67.177.56:8080/hhdj/news/newsList.do" parameters:dic progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        self->_objArr = [AssignToObject customModel:@"HLNewsModel" ToArray:[responseObject objectForKey:@"rows"]];
        [self->_aTableView reloadData];
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        NSLog(@"error = %@", error);
    }];
}
#pragma mark - delegete
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (_objArr) {
        HLNewsModel *obj = [_objArr objectAtIndex:indexPath.row];
        HLNewsTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId];
        [cell setModel:obj];
        return cell;
    }
    else
    {
        return nil;
    }
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [_objArr count];
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 100;
}
#pragma mark - didSelected方法
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    HLNewsModel *obj = [_objArr objectAtIndex:indexPath.row];
    
    
    HLDetailNewsViewController *vc = [[HLDetailNewsViewController alloc] init];
    vc.title = self.title;
    vc.newsId = obj.newsId;
    [self.navigationController pushViewController:vc animated:YES];
}
@end
