//
//  WSRuleViewModel.h
//  党建e家
//
//  Created by Sunweisheng on 2018/10/27.
//  Copyright © 2018年 何龙. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef void(^WSCallBack)(NSMutableArray* arr);

@interface WSRuleViewModel : NSObject

//返回积分规则请求的数据
-(void)setRuleObj:(WSCallBack)block;

@end

NS_ASSUME_NONNULL_END
