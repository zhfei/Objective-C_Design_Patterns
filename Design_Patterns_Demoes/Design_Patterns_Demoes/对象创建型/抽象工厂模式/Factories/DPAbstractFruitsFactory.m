//
//  DPAbstractFruitsFactory.m
//  Design_Patterns_Demoes
//
//  Created by 周飞 on 2019/4/9.
//  Copyright © 2019年 zhf. All rights reserved.
//

#import "DPAbstractFruitsFactory.h"

@implementation DPAbstractFruitsFactory
- (DPApple *)pruductApple {
    //DPApple对应一个继承链
    return [DPApple new];
}

- (DPFruit *)pruductOrange {
    //DPOrange对应一个继承链
    return [DPOrange new];
}
@end
