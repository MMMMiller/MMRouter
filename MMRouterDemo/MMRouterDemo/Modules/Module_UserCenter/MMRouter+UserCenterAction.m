//
//  MMRouter+userCenterAction.m
//  MMRouterDemo
//
//  Created by xueMingLuan on 2018/8/3.
//  Copyright © 2018 xueMingLuan. All rights reserved.
//

#import "MMRouter+UserCenterAction.h"
#import "MMUserCenterVC.h"

NSString * const kMMRouterTargetUserCenter = @"userCenter";

NSString * const kMMRouterActionNativeFetchUserCenterVC = @"nativeFetchUserCenterVC";

@implementation MMRouter (UserCenterAction)

- (UIViewController *)MMRouter_fetchUserCenterVC {
    UIViewController *viewController = [self performTarget:kMMRouterTargetUserCenter
                                                    action:kMMRouterActionNativeFetchUserCenterVC
                                                    params:nil];
    if ([viewController isKindOfClass:[UIViewController class]]) {
        return viewController;
    } else {
        return [[UIViewController alloc] init];
    }
}
@end
