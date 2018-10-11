//
//  NSDateFormatter+ShortCut.m
//  Objective-C_Design_Patterns
//
//  Created by zhoufei on 2018/10/11.
//  Copyright © 2018年 周飞. All rights reserved.
//

#import "NSDateFormatter+ShortCut.h"

static NSDateFormatter *_dateFormatter;
static NSString *defaultFormatterStr = @"yyyy-MM-dd HH:mm:ss";

@implementation NSDateFormatter (ShortCut)
+ (void)initialize {
    _dateFormatter = [[NSDateFormatter alloc] init];
    [_dateFormatter setDateFormat:defaultFormatterStr];
}

+ (NSString *)defaultFormatterStr {
    return defaultFormatterStr;
}

+ (NSDateFormatter *)defaultDateFormatter {
    return _dateFormatter;
}

@end
