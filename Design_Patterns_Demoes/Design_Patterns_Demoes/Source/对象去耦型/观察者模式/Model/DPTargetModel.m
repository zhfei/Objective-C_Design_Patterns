//
//  DPTargetModel.m
//  Design_Patterns_Demoes
//
//  Created by 周飞 on 2019/7/26.
//  Copyright © 2019年 zhf. All rights reserved.
//

#import "DPTargetModel.h"

@interface DPTargetModel ()
@property (nonatomic, strong) NSMutableArray <DPObserver *> *observerArray;
@end

@implementation DPTargetModel
- (void)attachObserver:(DPObserver *)observer {
    [self.observerArray addObject:observer];
    
}
- (void)detachObserver:(DPObserver *)observer {
    [self.observerArray removeObject:observer];
}
- (void)notify {
    [self.observerArray enumerateObjectsUsingBlock:^(DPObserver * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [obj updateState];
    }];
}

@end
