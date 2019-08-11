//
//  DPIteratorSet.m
//  Design_Patterns_Demoes
//
//  Created by 周飞 on 2019/8/5.
//  Copyright © 2019年 zhf. All rights reserved.
//

#import "DPIteratorSet.h"

@implementation DPIteratorSet
- (DPEnumerator *)enumerator {
    return [[DPEnumerator alloc] initWithSets:self];
}


- (void)enumerateUsingBlock:(void(^)(DPIteratorSet *obj, BOOL *stop))block {
    DPEnumerator *enumer = [self enumerator];
    
    BOOL p_stop = NO;
    for (DPIteratorSet *obj in enumer.allObjects) {
        block(obj, &p_stop);
        if (p_stop) {
            break;
        }
    }
}




@end
