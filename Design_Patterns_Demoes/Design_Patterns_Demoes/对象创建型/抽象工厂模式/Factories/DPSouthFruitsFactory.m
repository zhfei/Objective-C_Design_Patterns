//
//  DPSouthFruitsFactory.m
//  Design_Patterns_Demoes
//
//  Created by 周飞 on 2019/4/9.
//  Copyright © 2019年 zhf. All rights reserved.
//
//  南方水果工厂

#import "DPSouthFruitsFactory.h"
#import "DPSouthApple.h"
#import "DPSouthOrange.h"

@implementation DPSouthFruitsFactory
- (DPApple *)pruductApple {
    DPApple *apple = [DPSouthApple new];
    apple.origin = @"南方";
    return apple;
}

- (DPOrange *)pruductOrange {
    DPOrange *orange = [DPSouthOrange new];
    orange.origin = @"南方";
    return orange;
}
@end
