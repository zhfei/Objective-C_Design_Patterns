//
//  DPAbstractFruitsFactory.h
//  Design_Patterns_Demoes
//
//  Created by 周飞 on 2019/4/9.
//  Copyright © 2019年 zhf. All rights reserved.
//
//  一个抽象工厂生产的一套商品，为一个产品族

#import <Foundation/Foundation.h>
#import "DPApple.h"
#import "DPOrange.h"

#define USE_SOUTH 1
#define USE_NORTH 0

NS_ASSUME_NONNULL_BEGIN

@interface DPAbstractFruitsFactory : NSObject
+ (instancetype)factory;

- (DPApple *)pruductApple;
- (DPOrange *)pruductOrange;

@end

NS_ASSUME_NONNULL_END
