//
//  ZHFInputValidator.m
//  Objective-C_Design_Patterns
//
//  Created by zhoufei on 2018/12/25.
//  Copyright © 2018年 周飞. All rights reserved.
//

#import "ZHFInputValidator.h"

@implementation ZHFInputValidator
- (BOOL)validateInput:(UITextField *)input error:(NSError **)error {
     //触发自己代码块的异常NSException,再用@try @catch去捕捉异常，非常消耗资源，故不用
    if (error) {
        *error = nil;
    }
    return NO;
}
@end
