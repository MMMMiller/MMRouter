//
//  Target_alert.m
//  MMRouterDemo
//
//  Created by xueMingLuan on 2018/8/3.
//  Copyright © 2018 xueMingLuan. All rights reserved.
//

#import "Target_alert.h"

#import <UIKit/UIKit.h>

#import "UIViewController+MMExtension.h"

typedef void (^MMUrlRouterCallbackBlock)(NSDictionary *info);

@implementation Target_alert
- (void)Action_nativePresentAlert:(NSDictionary *)params {
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:params[@"title"]
                                                                   message:params[@"message"] preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"算了" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        MMUrlRouterCallbackBlock callback = params[@"cancelAction"];
        if (callback) {
            callback(@{@"alertAction":action});
        }
    }];
    
    UIAlertAction *confirmAction = [UIAlertAction actionWithTitle:@"好的" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        MMUrlRouterCallbackBlock callback = params[@"confirmAction"];
        if (callback) {
            callback(@{@"alertAction":action});
        }
    }];
    
    [alert addAction:cancelAction];
    [alert addAction:confirmAction];
    
    [[UIViewController mm_topViewController] presentViewController:alert animated:YES completion:nil];
    
}
@end
