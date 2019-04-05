//
//  Scribble.m
//  Design_Patterns_Demoes
//
//  Created by 周飞 on 2019/4/5.
//  Copyright © 2019年 zhf. All rights reserved.
//

#import "DPScribble.h"
#import "Stroke.h"

@interface DPScribble()
@property (nonatomic, strong) id <Mark> mark;
@end

@implementation DPScribble
@synthesize mark = parentMark_;
- (instancetype)init
{
    self = [super init];
    if (self) {
        parentMark_ = [Stroke new];
        [parentMark_ setColor:[UIColor blackColor]];
        [parentMark_ setSize:CGSizeMake(5, 5)];
    }
    return self;
}

#pragma mark -
#pragma mark - mark method for manager

- (void)addMark:(id<Mark>)aMark shouldAddToPreviousMark:(BOOL)shouldAddToPreviousMark {
    //手动调用kvo
    [self willChangeValueForKey:@"mark"];
    //是否添加到上一个节点上，作为上一个聚合体的一部分。
    if (shouldAddToPreviousMark && [parentMark_ lastChild]) {
        [[parentMark_ lastChild] addMark:aMark];
    } else {
        [parentMark_ addMark:aMark];
        incrementMark_ = aMark;
    }
    //手动调用kvo
    [self didChangeValueForKey:@"mark"];
}

- (void)removeMark:(id<Mark>)aMark {
    if (parentMark_ == aMark) {
        return;
    }
    
    [self willChangeValueForKey:@"mark"];
    [parentMark_ removeMark:aMark];
    if (aMark == incrementMark_) {
        incrementMark_ = nil;
    }
    //手动调用kvo
    [self didChangeValueForKey:@"mark"];
}

- (void)removeAllMarks {
    [self willChangeValueForKey:@"mark"];
    
    [parentMark_ removeAllMarks];
    incrementMark_ = nil;
    
    //手动调用kvo
    [self didChangeValueForKey:@"mark"];
}
@end
