//
//  ZHFAttackHandler.m
//  Objective-C_Design_Patterns
//
//  Created by 周飞 on 2018/12/23.
//  Copyright © 2018年 周飞. All rights reserved.
//

#import "ZHFAttackHandler.h"

@implementation ZHFAttackHandler
@synthesize nextAttackHandler = nextAttackHandler_;

- (void)handleAttack:(ZHFAttack *)attack {
    [nextAttackHandler_ handleAttack:attack];
}
@end
