//
//  Target_userCenter.m
//  MMRouterDemo
//
//  Created by xueMingLuan on 2018/8/3.
//  Copyright © 2018 xueMingLuan. All rights reserved.
//

#import "Target_userCenter.h"
#import "MMUserCenterVC.h"

@implementation Target_userCenter

- (UIViewController *)Action_nativeFetchUserCenterVC:(NSDictionary *)params {
    // 因为action是从属于ModuleA的，所以action直接可以使用ModuleA里的所有声明
    MMUserCenterVC *userCenterVC = [[MMUserCenterVC alloc] init];
    return userCenterVC;
}
@end
