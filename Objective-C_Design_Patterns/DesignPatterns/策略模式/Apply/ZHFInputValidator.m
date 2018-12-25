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
    if (error) {
        *error = nil;
    }
    return NO;
}
@end
