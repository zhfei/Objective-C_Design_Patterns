//
//  DPNorthFruitsFactory.m
//  Design_Patterns_Demoes
//
//  Created by 周飞 on 2019/4/9.
//  Copyright © 2019年 zhf. All rights reserved.
//

#import "DPNorthFruitsFactory.h"
#import "DPApple.h"
#import "DPOrange.h"

@implementation DPNorthFruitsFactory
- (DPFruit *)pruductApple {
    DPApple *apple = [DPApple new];
    apple.origin = @"北方";
    return apple;
}

- (DPFruit *)pruductOrange {
    DPOrange *orange = [DPOrange new];
    orange.origin = @"北方";
    return orange;
}
@end
