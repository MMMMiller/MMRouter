//
//  MMRouter+ForumAction.h
//  MMRouterDemo
//
//  Created by xueMingLuan on 2018/8/3.
//  Copyright © 2018 xueMingLuan. All rights reserved.
//

#import "MMRouter.h"
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MMRouter (ForumAction)

- (void)MMRouter_presentForum;

- (UIViewController *)MMRouter_fetchForumVC;

@end

NS_ASSUME_NONNULL_END
