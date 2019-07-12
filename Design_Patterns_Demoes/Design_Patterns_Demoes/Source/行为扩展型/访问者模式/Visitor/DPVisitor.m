//
//  DPVisitor.m
//  Design_Patterns_Demoes
//
//  Created by 周飞 on 2019/7/10.
//  Copyright © 2019年 zhf. All rights reserved.
//

#import "DPVisitor.h"
#import "DPElement.h"

@implementation DPVisitor
- (void)visitorConcreteA:(DPElement *)element {
    NSLog(@"处理元素对象：%@",element);
}
@end
