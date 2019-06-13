//
//  DPClassAdapter.m
//  Design_Patterns_Demoes
//
//  Created by zhoufei on 2019/6/13.
//  Copyright © 2019年 zhf. All rights reserved.
//

#import "DPClassAdapter.h"

@implementation DPClassAdapter
- (NSString *)giveMeAPlateOfBraisedFish {
    return [super pointOfDeliveryForFood];
}
@end
