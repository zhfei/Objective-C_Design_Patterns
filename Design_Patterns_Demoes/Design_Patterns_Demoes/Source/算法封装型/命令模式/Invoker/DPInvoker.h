//
//  DPInvoker.h
//  Design_Patterns_Demoes
//
//  Created by zhoufei on 2019/6/25.
//  Copyright © 2019年 zhf. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DPInvoker : NSObject
@property (nonatomic, strong, readonly) NSInvocation *invocatin;

+ (DPInvoker *)invokerWithInvocation:(NSInvocation *)invocatin;
@end

NS_ASSUME_NONNULL_END
