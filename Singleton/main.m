//
//  main.m
//  Singleton
//
//  Created by zhuo on 16/4/13.
//  Copyright © 2016年 ZenGame. All rights reserved.
//

#import <Foundation/Foundation.h>
#include "Singleton.h"
#include "XMDenfineSingle.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
//        Singleton* instance = [Singleton shareInstance];
//        Singleton* instance2 = [Singleton shareInstance];
//        
//        NSLog(@"%p\n", instance);
//        NSLog(@"%p\n", instance2);
//        
//        // 是相等的
//        Singleton* instance3 = [instance copy];
//        NSLog(@"%p\n", instance3);
//        
//        Singleton* instance4 = [[Singleton alloc] init];
//        NSLog(@"%p\n", instance4);
        
        XMDenfineSingle* instance = [XMDenfineSingle shareInstance];
        NSLog(@"%p\n", instance);
        XMDenfineSingle* instance2 = [XMDenfineSingle shareInstance];
        NSLog(@"%p\n", instance2);
        
        XMDenfineSingle* instance3 = [instance copy];
        NSLog(@"%p\n", instance3);

    }
    return 0;
}
