//
//  MMRouter.h
//  MMRouterDemo
//
//  Created by xueMingLuan on 2018/7/27.
//  Copyright © 2018 xueMingLuan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MMRouter : NSObject

+ (instancetype)sharedInstance;

// 远程App调用入口
- (id)performActionWithUrl:(NSURL *)url
                completion:(void(^)(NSDictionary *info))completion;

// 本地组件调用入口
- (id)performTarget:(NSString *)targetName
             action:(NSString *)actionName
             params:(NSDictionary *)params;

@end

