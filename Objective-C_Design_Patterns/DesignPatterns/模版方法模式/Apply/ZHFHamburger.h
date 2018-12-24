//
//  ZHFHamburger.h
//  Objective-C_Design_Patterns
//
//  Created by zhoufei on 2018/12/24.
//  Copyright © 2018年 周飞. All rights reserved.
//

#import "ZHFSandwish.h"

NS_ASSUME_NONNULL_BEGIN

@interface ZHFHamburger : ZHFSandwish
- (void)prepareBread;
- (void)addMeat;
- (void)addCondiments;

//汉堡包的特有方法
- (void)getBurgerBun;
- (void)addKetchup;
- (void)addMustard;
- (void)addBeefPatty;
- (void)addCheese;
- (void)addPickles;
@end

NS_ASSUME_NONNULL_END
