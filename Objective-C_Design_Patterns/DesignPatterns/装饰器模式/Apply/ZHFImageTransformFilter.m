//
//  ZHFImageTransformFilter.m
//  Objective-C_Design_Patterns
//
//  Created by zhoufei on 2018/12/18.
//  Copyright © 2018年 周飞. All rights reserved.
//

#import "ZHFImageTransformFilter.h"

@implementation ZHFImageTransformFilter
@synthesize transform = transform_;
- (instancetype)initWithImageComponent:(id<ZHFImageComponent>)component
                             transform:(CGAffineTransform)transform {
    if (self = [super initWithImageComponent:component]) {
        transform_ = transform;
    }
    return self;
}
- (void)apply {
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextConcatCTM(context, transform_);
}
@end
