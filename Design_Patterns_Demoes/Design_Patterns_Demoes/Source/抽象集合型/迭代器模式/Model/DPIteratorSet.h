//
//  DPIteratorSet.h
//  Design_Patterns_Demoes
//
//  Created by 周飞 on 2019/8/5.
//  Copyright © 2019年 zhf. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DPEnumerator.h"

NS_ASSUME_NONNULL_BEGIN

@interface DPIteratorSet : NSArray
- (DPEnumerator *)enumerator;
- (void)enumerateUsingBlock:(void(^)(DPIteratorSet *obj, BOOL *stop))block;
@end

NS_ASSUME_NONNULL_END
