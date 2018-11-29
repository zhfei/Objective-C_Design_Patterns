//
//  ZHFChasingGame.m
//  Objective-C_Design_Patterns
//
//  Created by zhoufei on 2018/11/29.
//  Copyright © 2018年 周飞. All rights reserved.
//

#import "ZHFChasingGame.h"

@implementation ZHFChasingGame
- (ZHFCharacter *)createPlayer:(ZHFCharacteBuilder *)builder {
    [builder buildNewCharacter];
    [builder buildStrength:50.0];
    [builder buildStamina:25.0];
    [builder buildIntelligence:75.0];
    [builder buildAgility:65.0];
    [builder buildAggressiveness:30.0];
    return [builder character];
}
- (ZHFCharacter *)createEnemy:(ZHFCharacteBuilder *)builder {
    [builder buildNewCharacter];
    [builder buildStrength:850.0];
    [builder buildStamina:65.0];
    [builder buildIntelligence:35.0];
    [builder buildAgility:25.0];
    [builder buildAggressiveness:90.0];
    return [builder character];
}
@end
