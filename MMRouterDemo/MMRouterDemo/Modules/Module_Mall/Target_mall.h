//
//  Target_BeautyMall.h
//  BeautyMall
//
//  Created by xueMingLuan on 2018/7/27.
//  Copyright © 2018 BeautyHZ. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface Target_mall : NSObject

- (void)Action_presentMall:(NSDictionary *)params;
- (void)Action_presentSpecialTopic:(NSDictionary *)params;
- (void)Action_presentGoodsDetail:(NSDictionary *)params;

- (UIViewController *)Action_nativeFetchMallVC:(NSDictionary *)params;
- (UIViewController *)Action_nativeFetchGoodsDetailVC:(NSDictionary *)params;
- (UIViewController *)Action_nativeFetchSpecialTopicVC:(NSDictionary *)params;

@end

NS_ASSUME_NONNULL_END
