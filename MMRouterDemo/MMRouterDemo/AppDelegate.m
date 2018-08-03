//
//  AppDelegate.m
//  MMRouterDemo
//
//  Created by xueMingLuan on 2018/8/3.
//  Copyright © 2018 xueMingLuan. All rights reserved.
//

#import "AppDelegate.h"

#import "ViewController.h"

#import "MMRouter+MallActions.h"
#import "MMRouter+ForumAction.h"
#import "MMRouter+UserCenterAction.h"
#import "MMRouter+ShopCartAction.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    UIViewController *mallVC = [[MMRouter sharedInstance] MMRouter_fetchMallVC];
    UINavigationController *mallNavi = [[UINavigationController alloc]initWithRootViewController:mallVC];
    
    UIViewController *forumVC = [[MMRouter sharedInstance] MMRouter_fetchForumVC];
    UINavigationController *forumNavi = [[UINavigationController alloc]initWithRootViewController:forumVC];
    
    UIViewController *cartVC = [[MMRouter sharedInstance] MMRouter_fetchShopCartVC];
    UINavigationController *cartNavi = [[UINavigationController alloc]initWithRootViewController:cartVC];
    
    UIViewController *userCenterVC = [[MMRouter sharedInstance] MMRouter_fetchUserCenterVC];
    UINavigationController *userCenterNavi = [[UINavigationController alloc]initWithRootViewController:userCenterVC];
    
    UITabBarController *tab = [[UITabBarController alloc] init];
    [tab addChildViewController:mallNavi];
    [tab addChildViewController:forumNavi];
    [tab addChildViewController:cartNavi];
    [tab addChildViewController:userCenterNavi];
    
    self.window.rootViewController = tab;
    [self.window makeKeyAndVisible];
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
