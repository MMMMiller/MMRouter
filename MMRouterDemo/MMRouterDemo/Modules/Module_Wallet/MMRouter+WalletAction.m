//
//  MMRouter+WalletAction.m
//  MMRouterDemo
//
//  Created by xueMingLuan on 2018/8/3.
//  Copyright © 2018 xueMingLuan. All rights reserved.
//

#import "MMRouter+WalletAction.h"

NSString * const kMMRouterTargetWallet = @"wallet";

NSString * const kMMRouterActionPresentWallet = @"presentWallet";
NSString * const kMMRouterActionNativeFetchWalletVC = @"nativeFetchWalletVC";

@implementation MMRouter (WalletAction)

- (void)MMRouter_presentWallet {
    [self performTarget:kMMRouterTargetWallet
                 action:kMMRouterActionPresentWallet
                 params:nil];
}

- (UIViewController *)MMRouter_fetchWalletVC {
    UIViewController *viewController = [self performTarget:kMMRouterTargetWallet
                                                    action:kMMRouterActionNativeFetchWalletVC
                                                    params:nil];
    if ([viewController isKindOfClass:[UIViewController class]]) {
        return viewController;
    } else {
        return [[UIViewController alloc] init];
    }
}
@end
