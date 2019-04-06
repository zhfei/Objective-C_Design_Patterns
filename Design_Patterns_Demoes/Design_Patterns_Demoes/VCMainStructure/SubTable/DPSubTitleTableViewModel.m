//
//  DPSubTitleTableViewModel.m
//  Design_Patterns_Demoes
//
//  Created by 周飞 on 2019/3/30.
//  Copyright © 2019年 zhf. All rights reserved.
//

#import "DPSubTitleTableViewModel.h"

@implementation DPSubTitleTableViewModel

NSArray *createTypeDataSource() {
    NSArray *source = @[@"原型模式",@"工厂方法模式",
                        @"抽象工厂模式",@"生成器模式",@"单例模式"];
    return source;

}

@end
