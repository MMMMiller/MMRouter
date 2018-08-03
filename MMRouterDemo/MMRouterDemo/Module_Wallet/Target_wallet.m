//
//  Target_wallet.m
//  MMRouterDemo
//
//  Created by xueMingLuan on 2018/8/3.
//  Copyright © 2018 xueMingLuan. All rights reserved.
//

#import "Target_wallet.h"

#import "MMWalletVC.h"

#import "UIViewController+MMExtension.h"

@implementation Target_wallet

- (void)Action_presentWallet:(NSDictionary *)params {
    MMWalletVC *walletVC = [[MMWalletVC alloc] init];
    UINavigationController *navi = [[UINavigationController alloc] initWithRootViewController:walletVC];
    [[UIViewController mm_topViewController] presentViewController:navi
                                                          animated:YES
                                                        completion:nil];
}
@end
