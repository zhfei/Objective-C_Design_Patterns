//
//  ZHFCrystalShield.m
//  Objective-C_Design_Patterns
//
//  Created by 周飞 on 2018/12/23.
//  Copyright © 2018年 周飞. All rights reserved.
//

#import "ZHFCrystalShield.h"
#import "ZHFMagicFireAttack.h"

@implementation ZHFCrystalShield
- (void)handleAttack:(ZHFAttack *)attack {
    if ([attack isKindOfClass:[ZHFMagicFireAttack class]]) {
        //攻击被挡住了
    } else {
        [super handleAttack:attack];
    }
}
@end
