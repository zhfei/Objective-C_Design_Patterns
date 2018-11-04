//
//  ScrawlModel.h
//  Objective-C_Design_Patterns
//
//  Created by 周飞 on 2018/11/1.
//  Copyright © 2018年 周飞. All rights reserved.
//
//  涂鸦模型

#import <Foundation/Foundation.h>
#import "Mark.h"

NS_ASSUME_NONNULL_BEGIN

@interface ScrawlModel : NSObject
@property (nonatomic, strong) id<Mark> markObj;

@end

NS_ASSUME_NONNULL_END
