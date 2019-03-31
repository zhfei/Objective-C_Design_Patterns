//
//  DPMainTableViewModel.m
//  Design_Patterns_Demoes
//
//  Created by 周飞 on 2019/3/29.
//  Copyright © 2019年 zhf. All rights reserved.
//

#import "DPMainTableViewModel.h"

@implementation DPMainTableViewModel

NSArray *mainDataSource() {
    NSArray *source = @[@"对象创建型",@"对象去耦型",@"抽象集合型",
                        @"性能与对象访问型",@"对象状态型",@"行为扩展型",
                        @"算法封装型",@"接口适配型"];
    return source;
}



@end
