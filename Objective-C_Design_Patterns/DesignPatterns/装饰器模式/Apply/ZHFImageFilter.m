//
//  ZHFImageFilter.m
//  Objective-C_Design_Patterns
//
//  Created by zhoufei on 2018/12/18.
//  Copyright © 2018年 周飞. All rights reserved.
//

#import "ZHFImageFilter.h"

@implementation ZHFImageFilter
@synthesize component = component_;
- (instancetype)initWithImageComponent:(id<ZHFImageComponent>)component {
    if (self = [super init]) {
        self.component = component;
    }
    return self;
}

- (id)forwardingTargetForSelector:(SEL)aSelector {
    if ([NSStringFromSelector(aSelector) hasPrefix:@"draw"]) {
        [self apply];
    }
    //使用消息转发给另一个对象处理，来实现任务处理链条，非常巧妙！！！
    return component_;
}

@end
