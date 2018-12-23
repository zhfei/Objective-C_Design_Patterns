//
//  ZHFMetalArmor.m
//  Objective-C_Design_Patterns
//
//  Created by 周飞 on 2018/12/23.
//  Copyright © 2018年 周飞. All rights reserved.
//

#import "ZHFMetalArmor.h"
#import "ZHFSwordArmorAttack.h"

@implementation ZHFMetalArmor
- (void)handleAttack:(ZHFAttack *)attack {
    if ([attack isKindOfClass:[ZHFMetalArmor class]]) {
        //攻击被这个盔甲当下了
    } else {
        [super handleAttack:attack];
    }
}

@end
