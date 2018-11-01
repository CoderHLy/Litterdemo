//
//  HLDemocraticView.h
//  党建e家
//
//  Created by 何龙 on 2018/11/1.
//  Copyright © 2018 何龙. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HLBtnView.h"
NS_ASSUME_NONNULL_BEGIN
@protocol HLDemocraticViewDelegate <NSObject>

-(void)nextPageWithBranchId:(NSString *)Id;

@end
@interface HLDemocraticView : UIView<HLBtnViewDelegate>
@property (nonatomic, weak)id<HLDemocraticViewDelegate>delegate;
@end

NS_ASSUME_NONNULL_END
