//
//  DPClient.m
//  Design_Patterns_Demoes
//
//  Created by zhoufei on 2019/6/13.
//  Copyright © 2019年 zhf. All rights reserved.
//

#import "DPClient.h"

static DPClient *sharedClient;

@implementation DPClient
+ (instancetype)sharedClient {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedClient = [[self alloc] init];
    });
    return sharedClient;
}

+ (instancetype)allocWithZone:(struct _NSZone *)zone {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedClient = [super allocWithZone:zone];
    });
    return sharedClient;
}

- (id)copy {
    return sharedClient;
}

- (id)mutableCopy {
    return sharedClient;
}
@end
