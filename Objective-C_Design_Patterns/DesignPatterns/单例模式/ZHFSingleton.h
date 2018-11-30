//
//  ZHFSingleton.h
//  Objective-C_Design_Patterns
//
//  Created by zhoufei on 2018/11/30.
//  Copyright © 2018年 周飞. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ZHFSingleton : NSObject <NSCopying>
+ (instancetype)singleton;
@end

NS_ASSUME_NONNULL_END
