//
//  ZHFAlphaInputValidator.m
//  Objective-C_Design_Patterns
//
//  Created by zhoufei on 2018/12/25.
//  Copyright © 2018年 周飞. All rights reserved.
//

static NSString * const InputValidationErrorDomain = @"InputValidationErrorDomain";

#import "ZHFAlphaInputValidator.h"

@implementation ZHFAlphaInputValidator
- (BOOL)validateInput:(UITextField *)input error:(NSError * _Nullable __autoreleasing *)error {
    //输入数据是字母
    NSError *regError = nil;
    NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:@"^[a-zA-Z]*$" options:NSRegularExpressionAnchorsMatchLines error:&regError];
    
    NSUInteger num = [regex numberOfMatchesInString:input.text options:NSMatchingAnchored range:NSMakeRange(0, [input.text length])];
    
    if (num == 0) {
        if (regError != nil) {
            NSString *des = NSLocalizedString(@"Input Validation Faild", @"");
            NSString *reason = NSLocalizedString(@"The Input can contain only letters", @"");
            
            NSArray *objArr = [NSArray arrayWithObjects:des,reason, nil];
            NSArray *keyArr = [NSArray arrayWithObjects:NSLocalizedDescriptionKey,NSLocalizedFailureReasonErrorKey, nil];
            NSDictionary *info = [NSDictionary dictionaryWithObject:objArr forKey:keyArr];
            *error = [NSError errorWithDomain:InputValidationErrorDomain code:1002 userInfo:info];
            return NO;
        }
        return NO;
    }
    
    return YES;
}
@end
