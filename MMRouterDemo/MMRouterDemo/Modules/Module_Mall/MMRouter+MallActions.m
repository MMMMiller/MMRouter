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

NSString * const kMMRouterActionNativeFetchMallVC = @"nativeFetchMallVC";
NSString * const kMMRouterActionNativeFetchGoodsDetailVC = @"nativeFetchGoodsDetailVC";
NSString * const kMMRouterActionNativeFetchSpecialTopicVC = @"nativeFetchSpecialTopicVC";

@implementation MMRouter (BeautyMallActions)

- (void)MMRouter_presentBeautyMall {
    [self performTarget:kMMRouterTargetMall
                 action:kMMRouterActionPresentMall
                 params:nil];
}

- (void)MMRouter_presentSpecialTopic:(NSDictionary *)params {
    [self performTarget:kMMRouterTargetMall
                 action:kMMRouterActionPresentSpecialTopic
                 params:params];
}

- (void)MMRouter_presentGoodsDetail:(NSDictionary *)params {
    [self performTarget:kMMRouterTargetMall
                 action:kMMRouterActionPresentGoodsDetail
                 params:params];
}

- (UIViewController *)MMRouter_fetchMallVC {
    UIViewController *viewController = [self performTarget:kMMRouterTargetMall
                                                    action:kMMRouterActionNativeFetchMallVC
                                                    params:nil];
    if ([viewController isKindOfClass:[UIViewController class]]) {
        return viewController;
    } else {
        return [[UIViewController alloc] init];
    }
}

- (UIViewController *)MMRouter_fetchGoodsDetialVCWithGoodsId:(NSInteger)goodsId {
    UIViewController *viewController = [self performTarget:kMMRouterTargetMall
                                                    action:kMMRouterActionNativeFetchGoodsDetailVC
                                                    params:@{@"goodsId":@(goodsId)}];
    if ([viewController isKindOfClass:[UIViewController class]]) {
        return viewController;
    } else {
        return [[UIViewController alloc] init];
    }
}

- (UIViewController *)MMRouter_fetchSpecialTopicVCWithTopicId:(NSInteger)topicId {
    UIViewController *viewController = [self performTarget:kMMRouterTargetMall
                                                    action:kMMRouterActionNativeFetchSpecialTopicVC
                                                    params:@{@"topicId":@(topicId)}];
    if ([viewController isKindOfClass:[UIViewController class]]) {
        return viewController;
    } else {
        return [[UIViewController alloc] init];
    }
}
@end
