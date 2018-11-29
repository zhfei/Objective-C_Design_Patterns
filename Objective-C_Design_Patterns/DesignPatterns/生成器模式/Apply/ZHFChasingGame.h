//
//  ZHFChasingGame.h
//  Objective-C_Design_Patterns
//
//  Created by zhoufei on 2018/11/29.
//  Copyright © 2018年 周飞. All rights reserved.
//
//  指挥者

#import <Foundation/Foundation.h>
#import "ZHFCharacter.h"
#import "ZHFCharacteBuilder.h"

NS_ASSUME_NONNULL_BEGIN

@interface ZHFChasingGame : NSObject

/**
 创建游戏中
 @param builder 角色构建对象
 @return 角色构建的结果
 */
- (ZHFCharacter *)createPlayer:(ZHFCharacteBuilder *)builder;
- (ZHFCharacter *)createEnemy:(ZHFCharacteBuilder *)builder;

@end

NS_ASSUME_NONNULL_END
