//
//  ZHFReubenSandwish.m
//  Objective-C_Design_Patterns
//
//  Created by zhoufei on 2018/12/24.
//  Copyright © 2018年 周飞. All rights reserved.
//

#import "ZHFReubenSandwish.h"

@implementation ZHFReubenSandwish
- (void)prepareBread {
    [self cutRyeBread];
}
- (void)addMeat {
    [self addCornBeef];
}
- (void)addCondiments {
    [self addSauerkraut];
    [self addThousandIslandDressing];
    [self addSwissCheese];
}

#pragma mark -
#pragma mark - ZHFReubenSandwish 鲁宾三明治特有操作
- (void)cutRyeBread {
    //特有的操作
}
- (void)addCornBeef {
    //特有的操作
}
- (void)addSauerkraut {
    //特有的操作
}
- (void)addThousandIslandDressing {
    //特有的操作
}
- (void)addSwissCheese {
    //特有的操作
}

@end
