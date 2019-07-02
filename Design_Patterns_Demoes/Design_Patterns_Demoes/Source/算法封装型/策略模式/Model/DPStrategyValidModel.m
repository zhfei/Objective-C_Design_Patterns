//
//  DPStrategyValidModel.m
//  Design_Patterns_Demoes
//
//  Created by 周飞 on 2019/7/2.
//  Copyright © 2019年 zhf. All rights reserved.
//

#import "DPStrategyValidModel.h"

@implementation DPStrategyValidModel
+ (BOOL)validText:(NSString *)text error:(NSError **)error {
    if (error) {
        *error = nil;
    }
    return NO;
}

@end
