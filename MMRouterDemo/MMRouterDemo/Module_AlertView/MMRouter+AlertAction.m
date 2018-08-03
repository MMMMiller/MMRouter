//
//  MMRouter+AlertAction.m
//  MMRouterDemo
//
//  Created by xueMingLuan on 2018/8/3.
//  Copyright © 2018 xueMingLuan. All rights reserved.
//

#import "MMRouter+AlertAction.h"

NSString * const kMMRouterTargetAlert = @"alert";

NSString * const kMMRouterActionPresentAlert = @"nativePresentAlert";

@implementation MMRouter (AlertAction)

- (void)MMRouter_presentAlertWithTitle:(NSString *)title
                               message:(NSString *)message
                         confirmAction:(void (^)(NSDictionary *info))confirmAction
                          cancelAction:(void (^)(NSDictionary *info))cancelAction
{
    NSMutableDictionary *paramsToSend = [[NSMutableDictionary alloc] init];
    if (title) {
        paramsToSend[@"title"] = title;
    }
    if (message) {
        paramsToSend[@"message"] = message;
    }
    if (cancelAction) {
        paramsToSend[@"cancelAction"] = cancelAction;
    }
    if (cancelAction) {
        paramsToSend[@"confirmAction"] = confirmAction;
    }
    
    [self performTarget:kMMRouterTargetAlert
                 action:kMMRouterActionPresentAlert
                 params:paramsToSend
      shouldCacheTarget:NO];
}

@end
