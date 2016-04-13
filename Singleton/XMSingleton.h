//
//  XMSingleton.h
//  Singleton
//
//  Created by zhuo on 16/4/13.
//  Copyright © 2016年 ZenGame. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XMSingleton : NSObject <NSCopying>

+ (instancetype)allocWithZone:(struct _NSZone *)zone;

+(instancetype) shareInstance;

- (id)copyWithZone:(nullable NSZone *)zone;


@end
