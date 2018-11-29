//
//  ZHFCharacter.m
//  Objective-C_Design_Patterns
//
//  Created by zhoufei on 2018/11/29.
//  Copyright © 2018年 周飞. All rights reserved.
//

#import "ZHFCharacter.h"

@interface ZHFCharacter ()


@end

@implementation ZHFCharacter
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.protection = 1.0;
        self.power = 1.0;
        self.strength = 1.0;
        self.stamina = 1.0;
        self.intelligence = 1.0;
        self.agility = 1.0;
        self.aggressiveness = 1.0;
    }
    return self;
}
@end
