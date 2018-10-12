//
//  NSArray+ShortCut.m
//  Objective-C_Design_Patterns
//
//  Created by zhoufei on 2018/10/12.
//  Copyright © 2018年 周飞. All rights reserved.
//

#import "NSArray+ShortCut.h"
#import "NSString+ShortCut.h"

@implementation NSArray (ShortCut)
+ (NSArray<NSString *>*)sortByFirstLetter:(NSArray<NSString *> *)sourceArray ascending:(BOOL)asc {
    NSSortDescriptor *descriptor = [NSSortDescriptor sortDescriptorWithKey:@"pinYin" ascending:asc];
    return [sourceArray sortedArrayUsingDescriptors:@[descriptor]];
}
@end
