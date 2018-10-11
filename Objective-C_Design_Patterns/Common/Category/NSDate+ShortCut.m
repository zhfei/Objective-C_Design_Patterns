//
//  NSDate+ShortCut.m
//  Objective-C_Design_Patterns
//
//  Created by zhoufei on 2018/10/11.
//  Copyright © 2018年 周飞. All rights reserved.
//

#import "NSDate+ShortCut.h"

@implementation NSDate (ShortCut)
+ (NSDate *)currentTime {
    NSTimeInterval interval = [[NSDate date] timeIntervalSince1970];
    NSDate *correctDate = [NSDate dateWithTimeIntervalSince1970:interval];
    return correctDate;
}

+ (NSString *)defaultFormatDate {
    NSDate *date = [self currentTime];
    return [[NSDateFormatter defaultDateFormatter] stringFromDate:date];
}
@end
