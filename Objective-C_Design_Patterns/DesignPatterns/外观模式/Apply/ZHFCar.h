//
//  ZHFCar.h
//  Objective-C_Design_Patterns
//
//  Created by 周飞 on 2018/12/8.
//  Copyright © 2018年 周飞. All rights reserved.
//
//  汽车

#import <Foundation/Foundation.h>


NS_ASSUME_NONNULL_BEGIN

@interface ZHFCar : NSObject
- (void)releaseBrakes;
- (void)changeGears;        //换挡
- (void)pressAccelerator;
- (void)pressBrakes;
- (void)releaseAccelerator; //松油门
@end

NS_ASSUME_NONNULL_END
