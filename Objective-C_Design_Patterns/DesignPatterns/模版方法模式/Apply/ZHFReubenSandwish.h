//
//  ZHFReubenSandwish.h
//  Objective-C_Design_Patterns
//
//  Created by zhoufei on 2018/12/24.
//  Copyright © 2018年 周飞. All rights reserved.
//

#import "ZHFSandwish.h"

NS_ASSUME_NONNULL_BEGIN

@interface ZHFReubenSandwish : ZHFSandwish
- (void)prepareBread;
- (void)addMeat;
- (void)addCondiments;
- (void)extraStep;

//鲁宾三明治特有操作
- (void)cutRyeBread;
- (void)addCornBeef;
- (void)addSauerkraut;
- (void)addThousandIslandDressing;
- (void)addSwissCheese;
- (void)grillIt;

@end

NS_ASSUME_NONNULL_END
