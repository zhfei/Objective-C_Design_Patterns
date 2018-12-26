//
//  ZHFCustomTextField.m
//  Objective-C_Design_Patterns
//
//  Created by zhoufei on 2018/12/26.
//  Copyright © 2018年 周飞. All rights reserved.
//

#import "ZHFCustomTextField.h"

@implementation ZHFCustomTextField
@synthesize validator = validator_;

- (BOOL)validate {
    NSError *validateError;
    BOOL result = [validator_ validateInput:self error:&validateError];
    
    if (!result) {
        UIAlertController* alert = [UIAlertController alertControllerWithTitle:[validateError localizedDescription] message:[validateError localizedFailureReason] preferredStyle:1];
        UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:nil];
        [alert addAction:defaultAction];
        [[UIApplication sharedApplication].keyWindow.rootViewController presentViewController:alert animated:YES completion:nil];
    }
    
    return result;
}

@end
