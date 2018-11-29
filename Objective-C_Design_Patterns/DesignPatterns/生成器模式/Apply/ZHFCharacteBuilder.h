//
//  ZHFCharacteBuilder.h
//  Objective-C_Design_Patterns
//
//  Created by zhoufei on 2018/11/29.
//  Copyright © 2018年 周飞. All rights reserved.
//
//  根据规则创建对应的角色模型，规则的执行者

#import <Foundation/Foundation.h>
#import "ZHFCharacter.h"

NS_ASSUME_NONNULL_BEGIN

@interface ZHFCharacteBuilder : NSObject
{
    @protected
    ZHFCharacter *character_;
}
@property (nonatomic, strong, readonly) ZHFCharacter *character;

- (instancetype)buildNewCharacter;
- (instancetype)buildStrength:(CGFloat)value;//体力
- (instancetype)buildStamina:(CGFloat)value;//耐力
- (instancetype)buildIntelligence:(CGFloat)value;//智力
- (instancetype)buildAgility:(CGFloat)value;//敏捷
- (instancetype)buildAggressiveness:(CGFloat)value;//攻击力
@end

NS_ASSUME_NONNULL_END
