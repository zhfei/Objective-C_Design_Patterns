//
//  DPInvoker.m
//  Design_Patterns_Demoes
//
//  Created by zhoufei on 2019/6/25.
//  Copyright © 2019年 zhf. All rights reserved.
//

#import "DPInvoker.h"

@interface DPInvoker ()
@property (nonatomic, strong) NSInvocation *invocatin;

@end

@implementation DPInvoker
+ (DPInvoker *)invokerWithInvocation:(NSInvocation *)invocatin {
    DPInvoker *invoker = [DPInvoker new];
    invoker.invocatin = invocatin;
    return invoker;
}
@end
