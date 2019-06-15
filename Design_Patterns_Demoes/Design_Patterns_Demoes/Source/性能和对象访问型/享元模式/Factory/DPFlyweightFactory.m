//
//  DPFlyweightFactory.m
//  Design_Patterns_Demoes
//
//  Created by zhoufei on 2019/6/14.
//  Copyright © 2019年 zhf. All rights reserved.
//

#import "DPFlyweightFactory.h"

static DPFlyweightFactory *shared;

@implementation DPFlyweightFactory
+ (instancetype)sharedFlyweightFactory {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shared = [[self alloc] init];
    });
    return shared;
}

+ (instancetype)allocWithZone:(struct _NSZone *)zone {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shared = [super allocWithZone:zone];
    });
    return shared;
}

- (id)copy {
    return shared;
}

- (id)mutableCopy {
    return shared;
}

@end
