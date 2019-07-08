//
//  DPImageFilterObject1.m
//  Design_Patterns_Demoes
//
//  Created by 周飞 on 2019/7/7.
//  Copyright © 2019年 zhf. All rights reserved.
//

#import "DPImageFilterObject1.h"

@implementation DPImageFilterObject1
- (void)operation {
    [super operation];
    [self addBehavior];
}

- (void)addBehavior {
    NSLog(@"特有动作");
}

@end
