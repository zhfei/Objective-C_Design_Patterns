//
//  ZHFCharacter.h
//  Objective-C_Design_Patterns
//
//  Created by zhoufei on 2018/11/29.
//  Copyright © 2018年 周飞. All rights reserved.
//
//  创建对象的原型（包含了基本属性）

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ZHFCharacter : NSObject

@property (nonatomic, assign) CGFloat protection;
@property (nonatomic, assign) CGFloat power;
@property (nonatomic, assign) CGFloat strength;//体力
@property (nonatomic, assign) CGFloat stamina;//耐力
@property (nonatomic, assign) CGFloat intelligence;//智力
@property (nonatomic, assign) CGFloat agility;//敏捷
@property (nonatomic, assign) CGFloat aggressiveness;//攻击力

@end

NS_ASSUME_NONNULL_END
