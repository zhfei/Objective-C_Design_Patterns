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

//当调用组件(接口：ZHFImageComponent)的draw方法时，因为装饰器没有draw方法（UIImage有，但是ZHFImageFilter装饰器没有），会出发消息转发，走forwardingTargetForSelector方法。
//装饰器在执行了自己的apply方法后，会返回消息处理对象给runtime系统，此时返回的对象继续处理该消息。
- (id)forwardingTargetForSelector:(SEL)aSelector {
    if ([NSStringFromSelector(aSelector) hasPrefix:@"draw"]) {
        [self apply];
    }
    //使用消息转发给另一个对象处理，来实现任务处理链条，非常巧妙！！！
    return component_;
}

@end
