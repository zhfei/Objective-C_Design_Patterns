//
//  ZHFAvatar.m
//  Objective-C_Design_Patterns
//
//  Created by 周飞 on 2018/12/23.
//  Copyright © 2018年 周飞. All rights reserved.
//

#import "ZHFAvatar.h"

@implementation ZHFAvatar
- (void)handleAttack:(ZHFAttack *)attack {
    //我被攻击了，攻击者是attack
    NSLog(@"我被攻击了，攻击者是:%@",attack);
}
@end
