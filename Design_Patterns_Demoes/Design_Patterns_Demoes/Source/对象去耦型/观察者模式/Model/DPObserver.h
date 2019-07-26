//
//  DPObserverModel.h
//  Design_Patterns_Demoes
//
//  Created by 周飞 on 2019/7/22.
//  Copyright © 2019年 zhf. All rights reserved.
//
//  观察者关注状态变化类，负责相应的业务处理

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DPObserver : NSObject
- (void)updateState;
@end

NS_ASSUME_NONNULL_END
