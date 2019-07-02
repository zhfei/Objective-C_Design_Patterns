//
//  DPEntity2Model.m
//  Design_Patterns_Demoes
//
//  Created by 周飞 on 2019/6/29.
//  Copyright © 2019年 zhf. All rights reserved.
//

#import "DPEntity2Model.h"

@implementation DPEntity2Model
- (void)startMakingCake {
    NSLog(@"开始做白糖蛋糕喽...");
    [super startMakingCake];
    NSLog(@"白糖蛋糕制作完成✅...");
}
//准备面粉
- (void)prepareFlour {
    NSLog(@"🍠粉");
}
//准备糖
- (void)prepareSugar {
    NSLog(@"白糖 ");
}
@end
