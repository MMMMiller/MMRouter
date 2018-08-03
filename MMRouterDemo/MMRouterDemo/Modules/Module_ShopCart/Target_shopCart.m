//
//  Target_shopCart.m
//  MMRouterDemo
//
//  Created by xueMingLuan on 2018/8/3.
//  Copyright © 2018 xueMingLuan. All rights reserved.
//

#import "Target_shopCart.h"
#import "MMShopCartVC.h"

@implementation Target_shopCart

- (UIViewController *)Action_nativeFetchShopCartVC:(NSDictionary *)params {
    // 因为action是从属于ModuleA的，所以action直接可以使用ModuleA里的所有声明
    MMShopCartVC *cartVC = [[MMShopCartVC alloc] init];
    return cartVC;
}

@end
