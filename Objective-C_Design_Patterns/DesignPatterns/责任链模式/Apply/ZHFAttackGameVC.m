//
//  ZHFAttackGameVC.m
//  Objective-C_Design_Patterns
//
//  Created by 周飞 on 2018/12/23.
//  Copyright © 2018年 周飞. All rights reserved.
//

#import "ZHFAttackGameVC.h"
#import "ZHFAttackHandler.h"
#import "ZHFSwordArmorAttack.h"
#import "ZHFMagicFireAttack.h"
#import "ZHFMetalArmor.h"
#import "ZHFCrystalShield.h"
#import "ZHFAvatar.h"
#import "ZHFLightningAttack.h"

@interface ZHFAttackGameVC ()

@end

@implementation ZHFAttackGameVC
#pragma mark - Life Cycle

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


#pragma mark - Getter, Setter

#pragma mark - Event

#pragma mark - Public Method

#pragma mark - Private Method
- (void)setup {
    //创建人物
    ZHFAttackHandler *avator = [[ZHFAvatar alloc] init];
    //穿上盔甲
    ZHFAttackHandler *metal = [ZHFMetalArmor new];
    [metal setNextAttackHandler:avator];
    //穿上盾牌
    ZHFAttackHandler *crystal = [ZHFCrystalShield new];
    [crystal setNextAttackHandler:metal];
    
    //开始行动
    //剑攻击
    ZHFAttack *attack = [ZHFMagicFireAttack new];
    [crystal handleAttack:attack];
    //火攻击
    ZHFAttack *sword = [ZHFSwordArmorAttack new];
    [crystal handleAttack:sword];
    //闪电攻击
    ZHFAttack *lighting = [ZHFLightningAttack new];
    [crystal handleAttack:lighting];
}

#pragma mark - Delegate

#pragma mark - NSCopying

#pragma mark - NSObject

@end
