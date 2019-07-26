//
//  DPTargetModel.h
//  Design_Patterns_Demoes
//
//  Created by 周飞 on 2019/7/26.
//  Copyright © 2019年 zhf. All rights reserved.
//
//  可以接受观察者的目标类

#import <Foundation/Foundation.h>
#import "DPObserver.h"

NS_ASSUME_NONNULL_BEGIN

@interface DPTargetModel : NSObject 
- (void)attachObserver:(DPObserver *)observer;
- (void)detachObserver:(DPObserver *)observer;
- (void)notify;

@end

NS_ASSUME_NONNULL_END
