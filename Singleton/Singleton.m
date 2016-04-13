//
//  Singleton.m
//  Singleton
//
//  Created by zhuo on 16/4/13.
//  Copyright © 2016年 ZenGame. All rights reserved.
//

#import "Singleton.h"

@implementation Singleton

static id _instace = nil;

+ (instancetype)allocWithZone:(struct _NSZone *)zone
{
    NSLog(@"allocWithZone");
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        if (_instace == nil)
        {
            _instace = [super allocWithZone:zone];
        }
    });
    
    return _instace;
}

+ (instancetype) shareInstance
{
    NSLog(@"shareInstance");
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        if (_instace == nil)
        {
            _instace = [[Singleton alloc] init];
        }
    });
    
    return _instace;
}

- (id)copyWithZone:(nullable NSZone *)zone
{
    return  _instace;
}
@end
