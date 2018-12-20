//
//  UIImage+ZHFTransform.m
//  Objective-C_Design_Patterns
//
//  Created by zhoufei on 2018/12/20.
//  Copyright © 2018年 周飞. All rights reserved.
//

#import "UIImage+ZHFTransform.h"
#import "UIImage+ZHFBaseFilter.h"

@implementation UIImage (ZHFTransform)
- (UIImage *)imageWithTransform:(CGAffineTransform)tranform {
    CGContextRef context = [self beginContext];
    CGContextConcatCTM(context, tranform);
    
    UIImage *imageOut = [self getImageFromCurrentImageContext];
    [self endContext];
    return imageOut;
}
@end
