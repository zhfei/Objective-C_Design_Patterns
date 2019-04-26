//
//  DPSingleObject.m
//  Design_Patterns_Demoes
//
//  Created by 周飞 on 2019/4/14.
//  Copyright © 2019年 zhf. All rights reserved.
//

#import "DPSingleObject.h"

static DPSingleObject *singleObj = nil;
@implementation DPSingleObject
+ (DPSingleObject *)sharedInstance {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        singleObj = [[super alloc] init];
    });
    return singleObj;
}

+ (instancetype)allocWithZone:(struct _NSZone *)zone {
    return singleObj;
}

@end
