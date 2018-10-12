//
//  UIImage+Custom.h
//  Objective-C_Design_Patterns
//
//  Created by zhoufei on 2018/10/6.
//  Copyright © 2018年 周飞. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Custom)
/**
 根据颜色生成一个纯色图片
 @param color 颜色
 @return 纯色图片
 */
+ (UIImage *)pureImageWithColor:(UIColor *)color;
/**
 生成一个截图
 @param view 要截图的view
 @return 截图
 */
+ (UIImage *)screenshotInView:(UIView *)view;
/**
 在图片上加另一个图片作为水印
 */
+ (UIImage *)waterMarkInImage:(UIImage *)image waterImage:(UIImage *)waterImage point:(CGPoint)point scale:(CGFloat)scale;
@end
