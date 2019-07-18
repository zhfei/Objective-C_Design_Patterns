//
//  DPFacader.m
//  Design_Patterns_Demoes
//
//  Created by 周飞 on 2019/7/14.
//  Copyright © 2019年 zhf. All rights reserved.
//

#import "DPFacader.h"
#import "DPSystemModuleB.h"
#import "DPSystemModuleA.h"

@interface DPFacader()
@property (nonatomic, strong) DPSystemModuleB *moduleB;
@property (nonatomic, strong) DPSystemModuleA *moduleA;

@end

@implementation DPFacader
#pragma mark - Private Method

#pragma mark - Public Method
- (void)eatFood {
    //炒西红柿
    [self.moduleA cuttingGreens];
    [self.moduleA fryGreens];
    [self.moduleA placeSeasoning];
    [self.moduleA installDish];
    //炒山药
    [self.moduleB cuttingGreens];
    [self.moduleB fryGreens];
    [self.moduleB placeSeasoning];
    [self.moduleB installDish];
}
#pragma mark - Event

#pragma mark - Getter, Setter
- (DPSystemModuleB *)moduleB {
    if (!_moduleB) {
        _moduleB = [DPSystemModuleB new];
    }
    return _moduleB;
}

- (DPSystemModuleA *)moduleA {
    if (!_moduleA) {
        _moduleA = [DPSystemModuleA new];
    }
    return _moduleA;
}

@end
