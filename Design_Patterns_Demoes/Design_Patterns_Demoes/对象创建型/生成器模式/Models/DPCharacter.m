//
//  DPCharacter.m
//  Design_Patterns_Demoes
//
//  Created by 周飞 on 2019/4/18.
//  Copyright © 2019年 zhf. All rights reserved.
//

#import "DPCharacter.h"

@implementation DPCharacter
- (instancetype)init
{
    self = [super init];
    if (self) {
        _protection = 1.0;
        _power = 1.0;
        _strength = 1.0;
        _stamina = 1.0;
        _intelligence = 1.0;
        _agility = 1.0;
        _aggressiveness = 1.0;
    }
    return self;
}
@end
