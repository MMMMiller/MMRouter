//
//  MMRouter+BeautyMallActions.h
//  BeautyMall
//
//  Created by xueMingLuan on 2018/7/27.
//  Copyright © 2018 BeautyHZ. All rights reserved.
//

#import "MMRouter.h"
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MMRouter (MallActions)

- (void)MMRouter_presentMall;
- (void)MMRouter_presentSpecialTopic:(NSDictionary *)params;
- (void)MMRouter_presentGoodsDetail:(NSDictionary *)params;

- (UIViewController *)MMRouter_fetchMallVC;
- (UIViewController *)MMRouter_fetchGoodsDetialVCWithGoodsId:(NSInteger)goodsId;
- (UIViewController *)MMRouter_fetchSpecialTopicVCWithTopicId:(NSInteger)topicId;

@end

NS_ASSUME_NONNULL_END
