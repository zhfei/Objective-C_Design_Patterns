//
//  ZHFScribble.m
//  Objective-C_Design_Patterns
//
//  Created by 周飞 on 2018/12/8.
//  Copyright © 2018年 周飞. All rights reserved.
//

#import "ZHFScribble.h"
#import "Stroke.h"

@interface ZHFScribble()
@property (nonatomic, strong) id <Mark> mark;
@end

@implementation ZHFScribble
@synthesize mark = parentMark_;
- (instancetype)init
{
    self = [super init];
    if (self) {
        parentMark_ = [Stroke new];
    }
    return self;
}

#pragma mark -
#pragma mark - mark method for manager

- (void)addMark:(id<Mark>)mark shouldAddToParentMark:(BOOL)shouldAddToParentMark {
    //手动调用kvo
    [self willChangeValueForKey:@"mark"];
    
    if (shouldAddToParentMark) {
        [[parentMark_ lastChild] addMark:mark];
    } else {
        [parentMark_ addMark:mark];
    }
    //手动调用kvo
    [self didChangeValueForKey:@"mark"];
}

- (void)removeMark:(id<Mark>)mark {
    if (parentMark_ == mark) {
        return;
    }
    
    [self willChangeValueForKey:@"mark"];
    [parentMark_ removeMark:mark];
    //手动调用kvo
    [self didChangeValueForKey:@"mark"];
}

- (ZHFScribbleMemento *)scribbleMemento {
    return [ZHFScribbleMemento new];
}
@end
