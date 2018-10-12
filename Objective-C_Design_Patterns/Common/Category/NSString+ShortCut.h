//
//  NSString+ShortCut.h
//  Objective-C_Design_Patterns
//
//  Created by zhoufei on 2018/10/11.
//  Copyright © 2018年 周飞. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (ShortCut)
/*!
 *  @brief 宽度固定，计算字符串高度
 *  @return 返回的大小
 */
- (CGSize)stringSizeWithFixedWidth:(CGFloat)width
                              font:(UIFont *)font
                              text:(NSString *)text;
/*!
 *  @brief 高度固定，计算字符串宽度
 *  @return 返回的大小
 */
- (CGSize)stringSizeWithFixedHeight:(CGFloat)height
                               font:(UIFont *)font
                               text:(NSString *)text;

#pragma mark - 排序
- (NSString *)pinYin;
@end
