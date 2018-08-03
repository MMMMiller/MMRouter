//
//  MMRouter+BeautyMallActions.m
//  BeautyMall
//
//  Created by xueMingLuan on 2018/7/27.
//  Copyright © 2018 BeautyHZ. All rights reserved.
//

#import "MMRouter+MallActions.h"

NSString * const kMMRouterTargetMall = @"mall";

NSString * const kMMRouterActionPresentMall = @"presentMall";
NSString * const kMMRouterActionPresentGoodsDetail = @"presentGoodsDetail";
NSString * const kMMRouterActionPresentSpecialTopic = @"presentSpecialTopic";

@implementation MMRouter (BeautyMallActions)

- (void)MMRouter_presentBeautyMall {
    [self performTarget:kMMRouterTargetMall
                 action:kMMRouterActionPresentMall
                 params:nil
      shouldCacheTarget:NO];
}

- (void)MMRouter_presentSpecialTopic:(NSDictionary *)params {
    [self performTarget:kMMRouterTargetMall
                 action:kMMRouterActionPresentSpecialTopic
                 params:params
      shouldCacheTarget:NO];
}

- (void)MMRouter_presentGoodsDetail:(NSDictionary *)params {
    [self performTarget:kMMRouterTargetMall
                 action:kMMRouterActionPresentGoodsDetail
                 params:params
      shouldCacheTarget:NO];
}
@end
