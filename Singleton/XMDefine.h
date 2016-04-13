//
//  XMDefine.h
//  Singleton
//
//  Created by zhuo on 16/4/13.
//  Copyright © 2016年 ZenGame. All rights reserved.
//

#ifndef XMDefine_h
#define XMDefine_h

/**
 *  单例头文件的宏
 *
 *
 *
 *
 */
#define XMSINGLE_H +(instancetype) shareInstance;

// .m 文件
#define XMSINGLE_M \
static id _instace = nil;\
+ (instancetype)allocWithZone:(struct _NSZone *)zone \
{\
    static dispatch_once_t onceToken;\
    dispatch_once(&onceToken, ^{\
        if (_instace == nil)\
        {\
            _instace = [super allocWithZone:zone];\
        }\
    });\
    \
    return _instace;\
}\
\
+ (instancetype) shareInstance\
{\
    static dispatch_once_t onceToken;\
    dispatch_once(&onceToken, ^{\
        if (_instace == nil)\
        {\
            _instace = [[self alloc] init];\
        }\
    });\
    return _instace;\
}\
- (id)copyWithZone:(nullable NSZone *)zone\
{\
    return  _instace;\
}

#endif /* XMDefine_h */
