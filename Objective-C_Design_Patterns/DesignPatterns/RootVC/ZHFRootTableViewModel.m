//
//  ZHFRootTableViewModel.m
//  Objective-C_Design_Patterns
//
//  Created by 周飞 on 2018/11/11.
//  Copyright © 2018年 周飞. All rights reserved.
//

#import "ZHFRootTableViewModel.h"

@implementation ZHFRootTableViewModel
SingletonM(ZHFRootTableViewModel)
- (NSArray *)dataSource {
    return @[@"原型模式"];
}

@end
