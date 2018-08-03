//
//  Target_wallet.h
//  MMRouterDemo
//
//  Created by xueMingLuan on 2018/8/3.
//  Copyright © 2018 xueMingLuan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface Target_wallet : NSObject

- (void)Action_presentWallet:(NSDictionary *)params;

- (UIViewController *)Action_nativeFetchWalletVC:(NSDictionary *)params;

@end

NS_ASSUME_NONNULL_END
