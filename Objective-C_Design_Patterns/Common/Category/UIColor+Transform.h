//
//  UIColor+Transform.h
//  Objective-C_Design_Patterns
//
//  Created by zhoufei on 2018/10/7.
//  Copyright © 2018年 周飞. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (Transform)
/**
  颜色转换：iOS中（以#开头）十六进制的颜色转换为UIColor(RGB)

 @param hex 十六进制字符串
 @param alpha alpha
 @return 颜色
 */
+ (UIColor *)colorWithHexString:(NSString *)hex alpha:(CGFloat)alpha;

/**
 color转换成十六进制字符串

 @param color 颜色
 @return 十六进制字符串
 */
+ (NSString *)hexStringFromColor:(UIColor *)color;
@end
