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

NSArray *createPerformanceTypeDataSource() {
    NSArray *source = @[@"享元模式",@"代理模式"];
    return source;
}

NSArray *actionExtendTypeDataSource() {
    NSArray *source = @[@"责任链模式",@"装饰器模式",@"访问者模式"];
    return source;
}

NSArray *arithmeticTypeDataSource() {
    NSArray *source = @[@"命令模式",@"策略模式",@"模版方法模式"];
    return source;
}

NSArray *abstractTypeDataSource() {
    NSArray *source = @[@"组合模式",@"迭代器模式"];
    return source;
}

NSArray *mementoTypeDataSource() {
    NSArray *source = @[@"备忘录模式"];
    return source;
}



@end
