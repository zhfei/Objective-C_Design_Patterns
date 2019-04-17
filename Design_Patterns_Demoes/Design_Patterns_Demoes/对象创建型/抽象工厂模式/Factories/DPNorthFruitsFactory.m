//
//  DPNorthFruitsFactory.m
//  Design_Patterns_Demoes
//
//  Created by 周飞 on 2019/4/9.
//  Copyright © 2019年 zhf. All rights reserved.
//

#import "DPNorthFruitsFactory.h"
#import "DPNorthOrange.h"
#import "DPNorthApple.h"

@implementation DPNorthFruitsFactory
- (DPApple *)pruductApple {
    DPApple *apple = [DPNorthApple new];
    apple.origin = @"北方";
    return apple;
}

- (DPOrange *)pruductOrange {
    DPOrange *orange = [DPNorthOrange new];
    orange.origin = @"北方";
    return orange;
}
@end
