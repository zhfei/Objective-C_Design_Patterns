//
//  UIImage+ZHFBaseFilter.m
//  Objective-C_Design_Patterns
//
//  Created by zhoufei on 2018/12/20.
//  Copyright © 2018年 周飞. All rights reserved.
//

#import "UIImage+ZHFBaseFilter.h"

@implementation UIImage (ZHFBaseFilter)
- (CGContextRef)beginContext {
    CGSize size = [self size];
    UIGraphicsBeginImageContextWithOptions(size, NO, 0);
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    return context;
}

- (UIImage *)getImageFromCurrentImageContext {
    [self drawAtPoint:CGPointZero];
    
    UIImage *imageOut = UIGraphicsGetImageFromCurrentImageContext();
    return imageOut;
}

- (void)endContext {
    UIGraphicsEndImageContext();
}
@end
