//
//  CAShapeLayer+ShortCut.m
//  Objective-C_Design_Patterns
//
//  Created by zhoufei on 2018/10/12.
//  Copyright © 2018年 周飞. All rights reserved.
//

#import "CAShapeLayer+ShortCut.h"

@implementation CAShapeLayer (ShortCut)
+ (instancetype)shortCutShapeLayer {
    CAShapeLayer * layer  = [CAShapeLayer layer];
    layer.backgroundColor = [UIColor whiteColor].CGColor;
    layer.fillColor       = [UIColor whiteColor].CGColor;
    layer.lineCap         = kCALineCapRound;
    layer.lineJoin        = kCALineJoinRound;
    layer.strokeColor     = [UIColor blackColor].CGColor;
    layer.lineWidth       = 2;
    return layer;
}
@end
