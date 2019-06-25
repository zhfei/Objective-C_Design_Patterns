//
//  DPReceiver.m
//  Design_Patterns_Demoes
//
//  Created by zhoufei on 2019/6/25.
//  Copyright © 2019年 zhf. All rights reserved.
//

#import "DPReceiver.h"

@implementation DPReceiver
- (NSInvocation *)receiverInvocationMethod {
    NSMethodSignature *ms1 = [DPReceiver instanceMethodSignatureForSelector:@selector(receiverTest:)];
    
    NSInvocation *invo = [NSInvocation invocationWithMethodSignature:ms1];
    [invo setTarget:self];
    [invo setSelector:@selector(receiverTest:)];
    
    NSString *para = @"这是个测试...";
    [invo setArgument:&para atIndex:2];
    return invo;
}

- (void)receiverTest:(NSString *)para {
    NSLog(@"receiverTest: %@...",para);
}

@end
