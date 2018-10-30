//
//  WSRuleViewModel.m
//  党建e家
//
//  Created by Sunweisheng on 2018/10/27.
//  Copyright © 2018年 何龙. All rights reserved.
//

#define TOKEN @"eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJleHQiOjE1NDE0MTMzMDUyNzMsInVpZCI6MTMsInB3ZCI6ImUxMGFkYzM5NDliYTU5YWJiZTU2ZTA1N2YyMGY4ODNlIiwiaWF0IjoxNTQwODA4NTA1MjczfQ.5POw80T6dkz8JRdl6aVgmTOaSYJAu90fFu9ELcYe9P4"

#import "WSRuleViewModel.h"

@implementation WSRuleViewModel{
    NSMutableArray *_arr;
}

-(AFHTTPSessionManager *)manager
{
    if (!_manager)
    {
        _manager = [AFHTTPSessionManager manager];

        //在请求u序列里加token值
        [_manager.requestSerializer setValue:TOKEN forHTTPHeaderField:@"token"];
    }
    return _manager;
}
//get请求获取网络数据
-(void)setRuleObj:(WSCallBack)block andStr:(NSString *)str
{
    _arr = [NSMutableArray array];
    [self.manager GET:str parameters:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
//        NSLog(@"responseObject = %@", responseObject);
        self->_arr = responseObject[@"rows"];
        block(self->_arr);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        NSLog(@"%@", error);
    }];
}
//post请求获取网络数据
-(void)postWebData:(WSCallBack)block andUrlStr:(NSString *)url andDic:(NSDictionary *)dic
{
    _arr = [NSMutableArray array];
    
    [self.manager POST:url parameters:dic progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
//        NSLog(@"responseObjct = %@", responseObject);
        self->_arr = responseObject[@"rows"];
        block(self->_arr);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        NSLog(@"error = %@", error);
    }];
}
@end
