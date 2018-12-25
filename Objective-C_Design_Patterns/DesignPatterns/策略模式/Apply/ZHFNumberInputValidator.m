//
//  ZHFNumberInputValidator.m
//  Objective-C_Design_Patterns
//
//  Created by zhoufei on 2018/12/25.
//  Copyright © 2018年 周飞. All rights reserved.
//

#import "ZHFNumberInputValidator.h"

@implementation ZHFNumberInputValidator
- (BOOL)validateInput:(UITextField *)input error:(NSError * _Nullable __autoreleasing *)error {
    //输入数据是0-9
    NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:@"^[0-9]*$" options:NSRegularExpressionCaseInsensitive error:error];
    
    NSUInteger num = [regex numberOfMatchesInString:input.text options:NSMatchingAnchored range:NSMakeRange(0, [input.text length])];
    
    if (num == 0) {
        
    }
    
    return YES;
}
@end
