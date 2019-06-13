//
//  DPStandardCharacterBuilder.m
//  Design_Patterns_Demoes
//
//  Created by 周飞 on 2019/4/18.
//  Copyright © 2019年 zhf. All rights reserved.
//

#import "DPStandardCharacterBuilder.h"

@implementation DPStandardCharacterBuilder

- (DPCharacterBuilder *)buildStrength:(CGFloat)value {
    
    self.character.protection *= value;
    self.character.power *= value;
    return [super buildStrength:value];
}

- (DPCharacterBuilder *)buildStamina:(CGFloat)value {
    self.character.protection *= value;
    self.character.power *= value;
    return [super buildStamina:value];
}

- (DPCharacterBuilder *)buildIntelligence:(CGFloat)value {
    self.character.protection *= value;
    self.character.power /= value;
    return [super buildIntelligence:value];
}
- (DPCharacterBuilder *)buildAgility:(CGFloat)value {
    self.character.protection *= value;
    self.character.power /= value;
    return [super buildAgility:value];
}
- (DPCharacterBuilder *)buildAggressiveness:(CGFloat)value {
    self.character.protection /= value;
    self.character.power *= value;
    return self;
}
@end
