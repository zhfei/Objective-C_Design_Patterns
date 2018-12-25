//
//  ZHFInputValidator.h
//  Objective-C_Design_Patterns
//
//  Created by zhoufei on 2018/12/25.
//  Copyright © 2018年 周飞. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ZHFInputValidator : NSObject
- (BOOL)validateInput:(UITextField *)input error:(NSError **)error;
@end

NS_ASSUME_NONNULL_END
