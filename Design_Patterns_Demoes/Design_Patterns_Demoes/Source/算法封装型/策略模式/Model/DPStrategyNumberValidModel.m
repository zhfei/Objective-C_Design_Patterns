//
//  DPStrategyNumberValidModel.m
//  Design_Patterns_Demoes
//
//  Created by 周飞 on 2019/7/2.
//  Copyright © 2019年 zhf. All rights reserved.
//

#import "DPStrategyNumberValidModel.h"

@implementation DPStrategyNumberValidModel
- (BOOL)validText:(NSString *)text error:(NSError * _Nullable __autoreleasing *)error {
    NSString *check = @"^[0-9]*$";
    NSRegularExpression *regular = [NSRegularExpression regularExpressionWithPattern:check options:NSRegularExpressionCaseInsensitive error:nil];
    NSInteger num = [regular numberOfMatchesInString:text options:NSMatchingReportProgress range:NSMakeRange(0, text.length-1)];
    
    return num == 1;
}


@end
