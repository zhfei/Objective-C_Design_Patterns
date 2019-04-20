//
//  DPChasingGame.m
//  Design_Patterns_Demoes
//
//  Created by 周飞 on 2019/4/18.
//  Copyright © 2019年 zhf. All rights reserved.
//

#import "DPChasingGame.h"

@implementation DPChasingGame
- (DPCharacter *)createPlayer:(DPCharacterBuilder *)builder {
    [builder buildNewCharacter];
    [builder buildStrength:0.2];
    [builder buildStamina:0.3];
    [builder buildIntelligence:0.4];
    [builder buildAgility:0.5];
    [builder buildAggressiveness:0.6];
    return builder.character;
}
- (DPCharacter *)createEnemy:(DPCharacterBuilder *)builder {
    [builder buildNewCharacter];
    [builder buildStrength:0.3];
    [builder buildStamina:0.8];
    [builder buildIntelligence:0.3];
    [builder buildAgility:0.56];
    [builder buildAggressiveness:0.87];
    return builder.character;
}
@end
