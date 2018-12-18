//
//  ZHFImageShadowFilter.m
//  Objective-C_Design_Patterns
//
//  Created by zhoufei on 2018/12/18.
//  Copyright © 2018年 周飞. All rights reserved.
//

#import "ZHFImageShadowFilter.h"

@implementation ZHFImageShadowFilter
- (void)apply {
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGSize size = CGSizeMake(-25, 10);
    CGContextSetShadow(context, size, 20.0);
}
@end
