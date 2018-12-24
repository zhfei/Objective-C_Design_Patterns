//
//  ZHFHamburger.m
//  Objective-C_Design_Patterns
//
//  Created by zhoufei on 2018/12/24.
//  Copyright © 2018年 周飞. All rights reserved.
//

#import "ZHFHamburger.h"

@implementation ZHFHamburger
- (void)prepareBread {
    [self getBurgerBun];
}
- (void)addMeat {
    [self addBeefPatty];
}
- (void)addCondiments {
    [self addKetchup];
    [self addMustard];
    [self addCheese];
    [self addPickles];
}

#pragma mark -
#pragma mark 汉堡包的特有方法
- (void)getBurgerBun {
    //小圆面包
}
- (void)addKetchup {
    
}
- (void)addMustard {
    
}
- (void)addBeefPatty {
    
}
- (void)addCheese {
    
}
- (void)addPickles {
    
}
@end
