//
//  UIViewController+MMExtension.m
//  MMRouterDemo
//
//  Created by xueMingLuan on 2018/8/3.
//  Copyright © 2018 xueMingLuan. All rights reserved.
//

#import "UIViewController+MMExtension.h"

@implementation UIViewController (MMExtension)

+ (UIViewController *)mm_topViewController {
    UIViewController *controller = [[[UIApplication sharedApplication] keyWindow] rootViewController];
    return [self mm_topViewControllerOnController:controller];
}

+ (UIViewController *)mm_topViewControllerOnController:(UIViewController *)controller {
    if ([controller isKindOfClass:[UINavigationController class]]) {
        UINavigationController *navigationController = (UINavigationController *)controller;
        return [self mm_topViewControllerOnController:navigationController.visibleViewController];
    }
    
    if (controller.presentedViewController) {
        return [self mm_topViewControllerOnController:controller.presentedViewController];
    }
    
    return controller;
}

@end
