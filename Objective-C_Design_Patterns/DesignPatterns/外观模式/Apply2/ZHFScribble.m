//
//  ZHFScribble.m
//  Objective-C_Design_Patterns
//
//  Created by 周飞 on 2018/12/8.
//  Copyright © 2018年 周飞. All rights reserved.
//

#import "ZHFScribble.h"
#import "Stroke.h"
#import "ZHFScribbleMemento+Friend.h"

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

- (void)addMark:(id<Mark>)aMark shouldAddToPreviousMark:(BOOL)shouldAddToPreviousMark {
    //手动调用kvo
    [self willChangeValueForKey:@"mark"];
    //是否添加到上一个节点上，作为上一个聚合体的一部分。
    if (shouldAddToPreviousMark) {
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


#pragma mark - 备忘录方法
- (id)initWithMemento:(ZHFScribbleMemento *)aMemento {
    if (self = [super init]) {
        if ([aMemento hasCompleteSnapshot]) {
            [self setMark:[aMemento mark]];
        } else {
            //如果备忘录中只有一个增量mark，那么就需要创建容纳它的父节点
            parentMark_ = [Stroke new];
            [self attachStateFromMemento:aMemento];
        }
    }
    return self;
}
+ (ZHFScribble *)scribbleWithMemento:(ZHFScribbleMemento *)aMemento {
    ZHFScribble *scribble = [[ZHFScribble alloc] initWithMemento:aMemento];
    return scribble;
}

- (ZHFScribbleMemento *)scribbleMemento {
    return [self scribbleMementoWithCompleteSnapshot:YES];
}

- (ZHFScribbleMemento *)scribbleMementoWithCompleteSnapshot:(BOOL)hasCompleteSnapshot {
    id <Mark> mementoMark = incrementMark_;
    
    //如果是完全快照，就是使用根节点
    if (hasCompleteSnapshot) {
        mementoMark = parentMark_;
    } else if ( mementoMark == nil ){
        return nil;
    }
    
    ZHFScribbleMemento *scribbleMemento = [[ZHFScribbleMemento alloc] initWithMark:mementoMark];
    [scribbleMemento setHasCompleteSnapshot:hasCompleteSnapshot];
    return scribbleMemento;
}

- (void)attachStateFromMemento:(ZHFScribbleMemento *)aMemento {
    //把来自备忘录中的状态，添加到根节点
    [self addMark:[aMemento mark] shouldAddToPreviousMark:NO];
}




@end
