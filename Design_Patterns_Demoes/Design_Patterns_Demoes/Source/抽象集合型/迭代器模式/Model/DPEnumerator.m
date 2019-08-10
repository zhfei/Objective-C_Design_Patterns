//
//  DPEnumerator.m
//  Design_Patterns_Demoes
//
//  Created by 周飞 on 2019/8/9.
//  Copyright © 2019年 zhf. All rights reserved.
//

#import "DPEnumerator.h"
#import "DPIteratorSet.h"

@interface DPEnumerator ()
@property (nonatomic, strong) NSMutableArray<DPIteratorSet *> *sets;
@end

@implementation DPEnumerator

- (instancetype)initWithSets:(NSArray<DPIteratorSet *> *)sets
{
    self = [super init];
    if (self) {
        self.sets = sets.mutableCopy;
    }
    return self;
}
- (id)first {
    id obj = [self.sets firstObject];
    [self.sets removeObjectAtIndex:0];
    return obj;
}
- (id)next {
    return [self first];
}
- (BOOL)hasNext {
    return self.sets.count;
}
@end
