//
//  UIImage+ZHFShadow.m
//  Objective-C_Design_Patterns
//
//  Created by zhoufei on 2018/12/20.
//  Copyright © 2018年 周飞. All rights reserved.
//

#import "UIImage+ZHFShadow.h"
#import "UIImage+ZHFBaseFilter.h"

@implementation UIImage (ZHFShadow)
- (UIImage *)imageWithDropShadow {
    CGContextRef context = [self beginContext];
    CGSize size = CGSizeMake(-25, 15);
    CGContextSetShadow(context, size, 20.0);
    
    UIImage *image = [self getImageFromCurrentImageContext];
    [self endContext];
    return image;
}
@end
