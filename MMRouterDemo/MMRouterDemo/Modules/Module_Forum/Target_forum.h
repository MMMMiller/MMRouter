//
//  Target_forum.h
//  MMRouterDemo
//
//  Created by xueMingLuan on 2018/8/3.
//  Copyright © 2018 xueMingLuan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface Target_forum : NSObject

- (void)Action_presentForum:(NSDictionary *)params;

- (UIViewController *)Action_nativeFetchForumVC:(NSDictionary *)params;

@end

NS_ASSUME_NONNULL_END
