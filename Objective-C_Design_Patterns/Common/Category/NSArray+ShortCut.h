//
//  NSArray+ShortCut.h
//  Objective-C_Design_Patterns
//
//  Created by zhoufei on 2018/10/12.
//  Copyright © 2018年 周飞. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (ShortCut)
+ (NSArray<NSString *>*)sortByFirstLetter:(NSArray<NSString *> *)sourceArray ascending:(BOOL)asc;
@end
