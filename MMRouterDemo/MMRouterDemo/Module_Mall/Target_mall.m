//
//  Target_BeautyMall.m
//  BeautyMall
//
//  Created by xueMingLuan on 2018/7/27.
//  Copyright © 2018 BeautyHZ. All rights reserved.
//

#import "Target_mall.h"

#import "MMMallVC.h"
#import "MMSpecialTopicVC.h"
#import "MMGoodsDetailVC.h"

#import "UIViewController+MMExtension.h"

@implementation Target_mall

- (void)Action_presentMall:(NSDictionary *)params {
    MMMallVC *mallVC = [[MMMallVC alloc] init];
    UINavigationController *navi = [[UINavigationController alloc] initWithRootViewController:mallVC];
    [[UIViewController mm_topViewController] presentViewController:navi
                                                          animated:YES
                                                        completion:nil];
}

- (void)Action_presentSpecialTopic:(NSDictionary *)params {
    MMSpecialTopicVC *mallVC = [[MMSpecialTopicVC alloc] initWithTopicId:params[@"topicId"]];
    UINavigationController *navi = [[UINavigationController alloc] initWithRootViewController:mallVC];
    [[UIViewController mm_topViewController] presentViewController:navi
                                                          animated:YES
                                                        completion:nil];
}

- (void)Action_presentGoodsDetail:(NSDictionary *)params {
    MMGoodsDetailVC *mallVC = [[MMGoodsDetailVC alloc] initWithGoodsId:params[@"goodsId"]];
    UINavigationController *navi = [[UINavigationController alloc] initWithRootViewController:mallVC];
    [[UIViewController mm_topViewController] presentViewController:navi
                                                          animated:YES
                                                        completion:nil];
}

@end
