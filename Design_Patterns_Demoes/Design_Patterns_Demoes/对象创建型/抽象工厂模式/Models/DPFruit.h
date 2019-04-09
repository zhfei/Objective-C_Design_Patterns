//
//  DPFruit.h
//  Design_Patterns_Demoes
//
//  Created by 周飞 on 2019/4/9.
//  Copyright © 2019年 zhf. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DPFruit : NSObject
@property (nonatomic, copy) NSString *origin;//产地
- (NSString *)fruitName;
@end

NS_ASSUME_NONNULL_END
