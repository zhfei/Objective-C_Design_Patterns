//
//  ZHFMarkEnumerator.m
//  Objective-C_Design_Patterns
//
//  Created by 周飞 on 2018/12/15.
//  Copyright © 2018年 周飞. All rights reserved.
//

#import "ZHFMarkEnumerator.h"

@interface ZHFMarkEnumerator ()
- (void)traverseAndBuildStackWithMark:(id<Mark>)mark;
@end

@implementation ZHFMarkEnumerator
- (NSArray *)allObject {
    return [[stack_ reverseObjectEnumerator] allObjects];
}

- (id)nextObject {
    return [stack_ pop];
}

#pragma mark - private Method
- (instancetype)initWithMark:(id<Mark>)mark {
    if (self = [super init]) {
        stack_ = [[NSMutableArray alloc] initWithCapacity:[mark count]];
        //后序遍历整个Mark组合树形结构
        //然后把遍历出来的mark放进栈中
        [self traverseAndBuildStackWithMark:mark];
    }
    return self;
}

- (void)traverseAndBuildStackWithMark:(id<Mark>)mark {
    if (mark == nil) {
        return;
    }
    [stack_ addObject:mark];
    
    NSInteger index = [mark count];
    id <Mark> childMark;
    while (childMark = [mark childAtIndex:--index]) {
        [self traverseAndBuildStackWithMark:childMark];
    }
    
}

@end
