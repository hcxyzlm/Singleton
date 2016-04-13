//
//  Singleton.h
//  Singleton
//
//  Created by zhuo on 16/4/13.
//  Copyright © 2016年 ZenGame. All rights reserved.
//

#import <Foundation/Foundation.h>

// 类的扩展，用gcd 实现 单例

@interface Singleton:NSObject <NSCopying>

+(instancetype) shareInstance;
@end
