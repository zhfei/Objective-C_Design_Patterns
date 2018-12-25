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
    [self extraStep];
    [self serve];
}

- (void)putBreadOnPlate {
    //公共方法
    //做任何三明治都需要先放到盘中上
}

- (void)extraStep {
    //子类选择实现
}

#pragma mark -
#pragma mark - Details will be handled by subclass
- (void)prepareBread {
    //子类实现
    [NSException raise:NSInternalInconsistencyException format:@"You must override%@in a subclass",NSStringFromSelector(_cmd)];
}

- (void)addMeat {
    //子类实现
    [NSException raise:NSInternalInconsistencyException format:@"You must override%@in a subclass",NSStringFromSelector(_cmd)];
}

- (void)addCondiments {
    //子类实现
    [NSException raise:NSInternalInconsistencyException format:@"You must override%@in a subclass",NSStringFromSelector(_cmd)];
}

@end
