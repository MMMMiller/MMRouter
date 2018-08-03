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

@implementation MMRouter (ForumAction)

- (void)MMRouter_presentForum {
    [self performTarget:kMMRouterTargetForum
                 action:kMMRouterActionPresentForum
                 params:nil
      shouldCacheTarget:NO];
}

@end
