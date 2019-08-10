//
//  DPEnumerator.h
//  Design_Patterns_Demoes
//
//  Created by 周飞 on 2019/8/9.
//  Copyright © 2019年 zhf. All rights reserved.
//

#import <Foundation/Foundation.h>
@class DPIteratorSet;

NS_ASSUME_NONNULL_BEGIN

@interface DPEnumerator : NSEnumerator
- (instancetype)initWithSets:(NSArray<DPIteratorSet *> *)sets;

- (id)first;
- (id)next;
- (BOOL)hasNext;
@end

NS_ASSUME_NONNULL_END
