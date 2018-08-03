//
//  MMRouter+ForumAction.m
//  MMRouterDemo
//
//  Created by xueMingLuan on 2018/8/3.
//  Copyright © 2018 xueMingLuan. All rights reserved.
//

#import "MMRouter+ForumAction.h"

NSString * const kMMRouterTargetForum = @"forum";

NSString * const kMMRouterActionPresentForum = @"presentForum";
NSString * const kMMRouterActionNativeFetchForumVC = @"nativeFetchForumVC";

@implementation MMRouter (ForumAction)

- (void)MMRouter_presentForum {
    [self performTarget:kMMRouterTargetForum
                 action:kMMRouterActionPresentForum
                 params:nil
      shouldCacheTarget:NO];
}

- (UIViewController *)MMRouter_fetchForumVC {
    UIViewController *viewController = [self performTarget:kMMRouterTargetForum
                                                    action:kMMRouterActionNativeFetchForumVC
                                                    params:nil
                                         shouldCacheTarget:NO];
    if ([viewController isKindOfClass:[UIViewController class]]) {
        return viewController;
    } else {
        return [[UIViewController alloc] init];
    }
}
@end
