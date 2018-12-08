//
//  ZHFCabDriver.m
//  Objective-C_Design_Patterns
//
//  Created by 周飞 on 2018/12/8.
//  Copyright © 2018年 周飞. All rights reserved.
//

#import "ZHFCabDriver.h"

@implementation ZHFCabDriver
- (void)driveToLocation:(CGPoint)x {
    ZHFTaximeter *tax = [ZHFTaximeter new];
    [tax start];
    
    ZHFCar *car = [ZHFCar new];
    //发车
    [car releaseBrakes];
    [car changeGears];
    [car pressAccelerator];
    
    //到站
    [car releaseAccelerator];
    [car pressBrakes];
    [tax stop];
}
@end
