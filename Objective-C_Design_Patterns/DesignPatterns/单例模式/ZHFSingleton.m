//
//  ZHFSingleton.m
//  Objective-C_Design_Patterns
//
//  Created by zhoufei on 2018/11/30.
//  Copyright © 2018年 周飞. All rights reserved.
//

#import "ZHFSingleton.h"

@implementation ZHFSingleton
+ (instancetype)singleton {
    static dispatch_once_t onceToken;
    static ZHFSingleton *single;
    dispatch_once(&onceToken, ^{
        single = [self new];
    });
    return single;
}

+ (instancetype)allocWithZone:(struct _NSZone *)zone {
    return [self singleton];
}

- (id)copyWithZone:(NSZone *)zone {
    return self;
}

@end
