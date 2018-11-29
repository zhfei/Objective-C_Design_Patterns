//
//  ZHFCharacteBuilder.m
//  Objective-C_Design_Patterns
//
//  Created by zhoufei on 2018/11/29.
//  Copyright © 2018年 周飞. All rights reserved.
//

#import "ZHFCharacteBuilder.h"

@implementation ZHFCharacteBuilder
@synthesize character = character_;

- (instancetype)buildNewCharacter {
    character_ = nil;
    character_ = [ZHFCharacter new];
    return self;
}
- (instancetype)buildStrength:(CGFloat)value {
    character_.strength = value;
    return self;
}
- (instancetype)buildStamina:(CGFloat)value {
    character_.stamina = value;
    return self;
}
- (instancetype)buildIntelligence:(CGFloat)value {
    character_.intelligence = value;
    return self;
}
- (instancetype)buildAgility:(CGFloat)value {
    character_.agility = value;
    return self;
}
- (instancetype)buildAggressiveness:(CGFloat)value {
    character_.aggressiveness = value;
    return self;
}

- (void)dealloc {
    character_ = nil;
}

@end
