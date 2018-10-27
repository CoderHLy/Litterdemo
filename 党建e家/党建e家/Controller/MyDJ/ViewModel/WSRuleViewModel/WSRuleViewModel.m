//
//  WSRuleViewModel.m
//  党建e家
//
//  Created by Sunweisheng on 2018/10/27.
//  Copyright © 2018年 何龙. All rights reserved.
//
#define TOKEN @"eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJleHQiOjE1NDEyMTY0MDM4MDQsInVpZCI6NCwicHdkIjoiZTEwYWRjMzk0OWJhNTlhYmJlNTZlMDU3ZjIwZjg4M2UiLCJpYXQiOjE1NDA2MTE2MDM4MDR9.GIGGmpb1FTidquGp5HZiV8ZIRNd-uDiUyP60Kq83JOM"
#import "WSRuleViewModel.h"
#define URL @"http://211.67.177.56:8080/hhdj/integral/integralRule.do"
@implementation WSRuleViewModel{
    NSMutableArray *_arr;
}
-(void)setRuleObj:(WSCallBack)block
{
    _arr = [NSMutableArray array];
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    manager.requestSerializer = [AFJSONRequestSerializer serializer];
    [manager.requestSerializer setValue:TOKEN forHTTPHeaderField:@"token-id"];
    [manager GET:URL parameters:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
//        NSLog(@"responseObject = %@", responseObject);
        self->_arr = responseObject[@"rows"];
        block(self->_arr);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        NSLog(@"%@", error);
    }];
}

@end
