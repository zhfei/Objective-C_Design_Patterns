//
//  DPFactoryViewController.h
//  Design_Patterns_Demoes
//
//  Created by 周飞 on 2019/4/6.
//  Copyright © 2019年 zhf. All rights reserved.
//
//  客户端，使用工厂方法生产产品。

#import "DPBaseViewController.h"
#import "DPCanvasViewGenerator.h"

NS_ASSUME_NONNULL_BEGIN

@interface DPFactoryViewController : DPBaseViewController
/**
 根据对应的工厂生产对应的画板

 @param gener 画板工厂
 */
- (void)loadCanvasViewWithGenerator:(DPCanvasViewGenerator *)gener ;

@end

NS_ASSUME_NONNULL_END
