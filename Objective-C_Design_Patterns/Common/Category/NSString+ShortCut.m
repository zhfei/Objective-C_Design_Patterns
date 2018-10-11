//
//  NSString+ShortCut.m
//  Objective-C_Design_Patterns
//
//  Created by zhoufei on 2018/10/11.
//  Copyright © 2018年 周飞. All rights reserved.
//

#import "NSString+ShortCut.h"

@implementation NSString (ShortCut)
- (CGSize)stringSizeWithFixedWidth:(CGFloat)width
                              font:(UIFont *)font
                              text:(NSString *)text {
    
    return [NSString stringSizeWithFixedValue:width isWidthFix:YES font:font text:text];
}

- (CGSize)stringSizeWithFixedHeight:(CGFloat)height
                               font:(UIFont *)font
                               text:(NSString *)text {
    return [NSString stringSizeWithFixedValue:height isWidthFix:NO font:font text:text];
}

+ (CGSize)stringSizeWithFixedValue:(CGFloat)fixValue
                        isWidthFix:(BOOL)isWidthFix
                              font:(UIFont *)font
                              text:(NSString *)text {
    
    CGFloat width = isWidthFix ? fixValue : 0;
    CGFloat height = isWidthFix ? 0 : fixValue;
    CGSize textSize;
    
    textSize = [text boundingRectWithSize:CGSizeMake(width, height)
                                  options:NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading
                               attributes:@{NSFontAttributeName:font}
                                  context:nil].size;
    return textSize;
}
@end
