//
//  ZHFStandardCharacteBuilder.m
//  Objective-C_Design_Patterns
//
//  Created by zhoufei on 2018/11/29.
//  Copyright © 2018年 周飞. All rights reserved.
//

#import "ZHFStandardCharacteBuilder.h"

@implementation ZHFStandardCharacteBuilder
- (instancetype)buildStrength:(CGFloat)value {
    character_.protection *= value;
    character_.power *= value;
    return [super buildStrength:value];
}
- (instancetype)buildStamina:(CGFloat)value {
    character_.protection *= value;
    character_.power *= value;
    return [super buildStamina:value];
}
- (instancetype)buildIntelligence:(CGFloat)value {
    character_.protection *= value;
    character_.power /= value;
    return [super buildIntelligence:value];
}
- (instancetype)buildAgility:(CGFloat)value {
    character_.protection *= value;
    character_.power /= value;
    return [super buildAgility:value];;
}
- (instancetype)buildAggressiveness:(CGFloat)value {
    character_.protection /= value;
    character_.power *= value;
    return [super buildAggressiveness:value];
}
@end
