//
//  DPOriginator.h
//  Design_Patterns_Demoes
//
//  Created by 周飞 on 2019/8/12.
//  Copyright © 2019年 zhf. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DPOriginator : NSObject <NSObject, NSCoding>
@property (nonatomic, strong) NSNumber *state;

+ (instancetype)originatorWithMemento:(NSData *)memento;
- (NSData *)memento;
@end

NS_ASSUME_NONNULL_END
