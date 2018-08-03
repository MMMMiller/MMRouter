//
//  MMRouter+ShopCartAction.m
//  MMRouterDemo
//
//  Created by xueMingLuan on 2018/8/3.
//  Copyright © 2018 xueMingLuan. All rights reserved.
//

#import "MMRouter+ShopCartAction.h"

NSString * const kMMRouterTargetShopCart = @"shopCart";

NSString * const kMMRouterActionNativeFetchShopCartVC = @"nativeFetchShopCartVC";

@implementation MMRouter (ShopCartAction)

- (UIViewController *)MMRouter_fetchShopCartVC {
    UIViewController *viewController = [self performTarget:kMMRouterTargetShopCart
                                                    action:kMMRouterActionNativeFetchShopCartVC
                                                    params:nil
                                         shouldCacheTarget:NO];
    if ([viewController isKindOfClass:[UIViewController class]]) {
        return viewController;
    } else {
        return [[UIViewController alloc] init];
    }
}

@end
