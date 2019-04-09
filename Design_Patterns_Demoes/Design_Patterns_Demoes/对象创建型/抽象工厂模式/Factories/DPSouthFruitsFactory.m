//
//  DPSouthFruitsFactory.m
//  Design_Patterns_Demoes
//
//  Created by 周飞 on 2019/4/9.
//  Copyright © 2019年 zhf. All rights reserved.
//
//  南方水果工厂

#import "DPSouthFruitsFactory.h"
#import "DPApple.h"
#import "DPOrange.h"

@implementation DPSouthFruitsFactory
- (DPFruit *)pruductApple {
    DPApple *apple = [DPApple new];
    apple.origin = @"南方";
    return apple;
}

- (DPFruit *)pruductOrange {
    DPOrange *orange = [DPOrange new];
    orange.origin = @"南方";
    return orange;
}
@end
