//
//  UIImage+Custom.m
//  Objective-C_Design_Patterns
//
//  Created by zhoufei on 2018/10/6.
//  Copyright © 2018年 周飞. All rights reserved.
//

#import "UIImage+Custom.h"

@implementation UIImage (Custom)
+ (UIImage *)pureImageWithColor:(UIColor *)color {
    CGRect rect = (CGRect){CGPointZero, (CGSize){1,1}};
    UIGraphicsBeginImageContextWithOptions(rect.size, NO, 0.0);
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetFillColorWithColor(context, color.CGColor);
    CGContextFillRect(context, rect);
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}

+ (UIImage *)screenshotInView:(UIView *)view {
    UIGraphicsBeginImageContextWithOptions(view.bounds.size, NO, 0.0);
    CGContextRef context = UIGraphicsGetCurrentContext();
    [view.layer renderInContext:context];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}

+ (UIImage *)waterMarkInImage:(UIImage *)image waterImage:(UIImage *)waterImage point:(CGPoint)point scale:(CGFloat)scale{
    NSAssert(image, @"原始图片为空");
    NSAssert(waterImage, @"水印图片为空");
    
    CGFloat imageW = image.size.width;
    CGFloat imageH = image.size.height;
    
    //1.创建一个基于位图的上下文(开启一个基于位图的上下文)
    UIGraphicsBeginImageContextWithOptions(image.size, NO, 0.0);
    [image drawInRect:CGRectMake(0, 0, imageW, imageH)];
    
    CGFloat waterW = waterImage.size.width;
    CGFloat WaterH = waterImage.size.height;
    
    CGFloat cW = waterW * scale;
    CGFloat cH = WaterH * scale;
    CGFloat cX = (imageW - cW)/point.x;
    CGFloat cY = (imageH - cH)/point.y;
    
    [waterImage drawInRect:CGRectMake(cX, cY, cW, cH)];
    
    UIImage *outputImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return outputImage;
    
}

@end
