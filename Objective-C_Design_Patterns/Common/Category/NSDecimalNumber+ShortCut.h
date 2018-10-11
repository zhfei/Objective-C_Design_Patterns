//
//  NSDecimalNumber+ShortCut.h
//  Objective-C_Design_Patterns
//
//  Created by zhoufei on 2018/10/11.
//  Copyright © 2018年 周飞. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDecimalNumber (ShortCut)
//加
- (NSDecimalNumber *)sAdd:(id)number;
//减
- (NSDecimalNumber *)sSubtract:(id)number;
//乘
- (NSDecimalNumber *)sMultiply:(id)number;
//除
- (NSDecimalNumber *)sDivide:(id)number;
@end
