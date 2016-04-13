//
//  XMSingleton.m
//  Singleton
//
//  Created by zhuo on 16/4/13.
//  Copyright © 2016年 ZenGame. All rights reserved.
//

#import "XMSingleton.h"

@implementation XMSingleton

static id _instace = nil;

+ (instancetype)allocWithZone:(struct _NSZone *)zone
{
    NSLog(@"allocWithZone");
    @synchronized(self)
    {
        if (_instace == nil)
        {
            _instace = [super allocWithZone:zone];
        }
    }
    
    return _instace;
}

+ (instancetype) shareInstance
{
    NSLog(@"shareInstance");
    @synchronized(self)
    {
        if (_instace == nil)
        {
            _instace = [[XMSingleton alloc] init];
        }
    }
    
   
    
    return _instace;
}

- (id)copyWithZone:(nullable NSZone *)zone
{
    return  _instace;
}


@end
