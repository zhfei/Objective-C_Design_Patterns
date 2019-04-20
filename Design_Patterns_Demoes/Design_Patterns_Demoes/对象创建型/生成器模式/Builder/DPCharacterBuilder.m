//
//  DPCharacterBuilder.m
//  Design_Patterns_Demoes
//
//  Created by 周飞 on 2019/4/18.
//  Copyright © 2019年 zhf. All rights reserved.
//

#import "DPCharacterBuilder.h"

@interface DPCharacterBuilder ()
@property (nonatomic, strong) DPCharacter *character;
@end

@implementation DPCharacterBuilder
- (DPCharacterBuilder *)buildNewCharacter {
    _character = [DPCharacter new];
    return self;
}

- (DPCharacterBuilder *)buildStrength:(CGFloat)value {
    _character.strength = value;
    return self;
}

- (DPCharacterBuilder *)buildStamina:(CGFloat)value {
    _character.stamina = value;
    return self;
}

- (DPCharacterBuilder *)buildIntelligence:(CGFloat)value {
    _character.intelligence = value;
    return self;
}
- (DPCharacterBuilder *)buildAgility:(CGFloat)value {
    _character.agility = value;
    return self;
}
- (DPCharacterBuilder *)buildAggressiveness:(CGFloat)value {
    _character.aggressiveness = value;
    return self;
}
@end
