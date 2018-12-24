//
//  ZHFSandwish.m
//  Objective-C_Design_Patterns
//
//  Created by zhoufei on 2018/12/24.
//  Copyright © 2018年 周飞. All rights reserved.
//

#import "ZHFSandwish.h"

@implementation ZHFSandwish
- (void)make {
    [self prepareBread];
    [self putBreadOnPlate];
    [self addMeat];
    [self addCondiments];
    [self serve];
}

- (void)putBreadOnPlate {
    //公共方法
    //做任何三明治都需要先放到盘中上
}

#pragma mark -
#pragma mark - Details will be handled by subclass
- (void)prepareBread {
    //子类实现
}

- (void)addMeat {
    //子类实现
}

- (void)addCondiments {
    //子类实现
}

@end
