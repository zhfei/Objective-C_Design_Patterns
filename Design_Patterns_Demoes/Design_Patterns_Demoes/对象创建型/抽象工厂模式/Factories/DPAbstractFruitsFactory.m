//
//  DPAbstractFruitsFactory.m
//  Design_Patterns_Demoes
//
//  Created by 周飞 on 2019/4/9.
//  Copyright © 2019年 zhf. All rights reserved.
//

#import "DPAbstractFruitsFactory.h"

@implementation DPAbstractFruitsFactory
- (DPFruit *)pruductApple {
    return [DPFruit new];
}
- (DPFruit *)pruductOrange {
    return [DPFruit new];
}
@end
