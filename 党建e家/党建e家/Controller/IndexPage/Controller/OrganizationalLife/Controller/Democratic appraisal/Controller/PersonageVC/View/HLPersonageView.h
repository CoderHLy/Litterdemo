//
//  HLPersonageView.h
//  党建e家
//
//  Created by 何龙 on 2018/11/1.
//  Copyright © 2018 何龙. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@protocol HLPersonageViewDelegate <NSObject>

-(void)btnSelect;

@end
@interface HLPersonageView : UIView
@property (nonatomic, weak) id<HLPersonageViewDelegate>delegate;
@end

NS_ASSUME_NONNULL_END
