//
//  DPTemplateModel.m
//  Design_Patterns_Demoes
//
//  Created by 周飞 on 2019/6/28.
//  Copyright © 2019年 zhf. All rights reserved.
//

#import "DPTemplateModel.h"

@implementation DPTemplateModel
- (instancetype)init
{
    self = [super init];
    if (self) {
        [self action];
    }
    return self;
}

- (void)action {
    [self step1];
    [self step2];
}

- (void)step1 {
    
}

- (void)step2 {
    
}


@end
