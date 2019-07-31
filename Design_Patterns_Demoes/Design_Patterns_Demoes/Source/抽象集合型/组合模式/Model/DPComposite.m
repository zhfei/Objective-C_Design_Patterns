//
//  DPComposite.m
//  Design_Patterns_Demoes
//
//  Created by 周飞 on 2019/7/30.
//  Copyright © 2019年 zhf. All rights reserved.
//

#import "DPComposite.h"

@interface DPComposite ()
@property (nonatomic, strong) NSMutableArray<id<DPCompositeProtocol>> *compositePool;
@end

@implementation DPComposite
@synthesize location = _location;

- (void)operation {
    NSLog(@"复杂组件操作...");
}

- (void)addComposite:(id<DPCompositeProtocol>)comp {
    [self.compositePool addObject:comp];
}

- (void)removeComposite:(id<DPCompositeProtocol>)comp {
    [self.compositePool removeObject:comp];
}

- (id<DPCompositeProtocol>)getChild:(NSInteger)index {
    NSAssert(self.compositePool.count > index, @"数组越界...");
    return [self.compositePool objectAtIndex:index];
}

- (NSMutableArray<id<DPCompositeProtocol>> *)compositePool {
    if (!_compositePool) {
        _compositePool = @[].mutableCopy;
    }
    return _compositePool;
}
@end
