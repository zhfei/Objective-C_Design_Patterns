//
//  DPMediator.h
//  Design_Patterns_Demoes
//
//  Created by 周飞 on 2019/7/25.
//  Copyright © 2019年 zhf. All rights reserved.
//
//  处理不同控制器的交互

#import <Foundation/Foundation.h>
#import "DPMediatorProtocol.h"


NS_ASSUME_NONNULL_BEGIN

@interface DPMediator : NSObject
@property (nonatomic, strong) id<DPMediatorProtocol> mediatorVCA;
@property (nonatomic, strong) id<DPMediatorProtocol> mediatorVCB;

@end

NS_ASSUME_NONNULL_END
