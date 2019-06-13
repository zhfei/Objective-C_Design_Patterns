//
//  DPObjectAdapter.m
//  Design_Patterns_Demoes
//
//  Created by zhoufei on 2019/6/13.
//  Copyright © 2019年 zhf. All rights reserved.
//

#import "DPObjectAdapter.h"
#import "DPObjectAdaptee.h"

@interface DPObjectAdapter ()
@property (nonatomic, strong) DPObjectAdaptee *adaptee;
@end

@implementation DPObjectAdapter
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.adaptee = [DPObjectAdaptee new];
    }
    return self;
}

- (NSString *)giveMeAPlateOfBraisedFish {
    return [self.adaptee pointOfDeliveryForFood];
}

@end
