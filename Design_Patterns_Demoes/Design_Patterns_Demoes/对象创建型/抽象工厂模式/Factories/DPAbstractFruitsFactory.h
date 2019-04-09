//
//  DPAbstractFruitsFactory.h
//  Design_Patterns_Demoes
//
//  Created by 周飞 on 2019/4/9.
//  Copyright © 2019年 zhf. All rights reserved.
//
//  一个抽象工厂生产的一套商品，为一个产品族

#import <Foundation/Foundation.h>
#import "DPFruit.h"

NS_ASSUME_NONNULL_BEGIN

@interface DPAbstractFruitsFactory : NSObject
- (DPFruit *)pruductApple;
- (DPFruit *)pruductOrange;

@end

NS_ASSUME_NONNULL_END
