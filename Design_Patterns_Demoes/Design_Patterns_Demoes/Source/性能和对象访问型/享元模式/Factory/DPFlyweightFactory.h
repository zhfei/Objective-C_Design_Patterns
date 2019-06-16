//
//  DPFlyweightFactory.h
//  Design_Patterns_Demoes
//
//  Created by zhoufei on 2019/6/14.
//  Copyright © 2019年 zhf. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DPFlyweightModel.h"
NS_ASSUME_NONNULL_BEGIN

@interface DPFlyweightFactory : NSObject
+ (instancetype)sharedFlyweightFactory;

- (DPFlyweightModel *)flyweightModelWithName:(NSString *)name;

@end

NS_ASSUME_NONNULL_END
