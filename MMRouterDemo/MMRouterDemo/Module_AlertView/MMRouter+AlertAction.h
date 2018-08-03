//
//  MMRouter+AlertAction.h
//  MMRouterDemo
//
//  Created by xueMingLuan on 2018/8/3.
//  Copyright © 2018 xueMingLuan. All rights reserved.
//

#import "MMRouter.h"

@interface MMRouter (AlertAction)
- (void)MMRouter_presentAlertWithTitle:(NSString *)title
                               message:(NSString *)message
                         confirmAction:(void (^)(NSDictionary *info))confirmAction
                          cancelAction:(void (^)(NSDictionary *info))cancelAction;
@end

