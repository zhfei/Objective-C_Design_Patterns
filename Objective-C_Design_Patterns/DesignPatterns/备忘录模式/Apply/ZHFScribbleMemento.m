//
//  ZHFScribbleMemento.m
//  Objective-C_Design_Patterns
//
//  Created by zhoufei on 2019/1/7.
//  Copyright © 2019年 周飞. All rights reserved.
//

#import "ZHFScribbleMemento.h"
#import "ZHFScribbleMemento+Friend.h"

@interface ZHFScribbleMemento ()
@property (nonatomic, copy) id<Mark> mark;
@end

@implementation ZHFScribbleMemento
@synthesize mark = mark_;
@synthesize hasCompleteSnapshot = hasCompleteSnapshot_;

- (NSData *)data {
    NSData *data = [NSKeyedArchiver archivedDataWithRootObject:mark_];
    return data;
}

+ (ZHFScribbleMemento *)mementoWithData:(NSData *)data {
    id<Mark> retoredMark = (id<Mark>)[NSKeyedUnarchiver unarchiveObjectWithData:data];
    ZHFScribbleMemento *memento = [[ZHFScribbleMemento alloc] initWithMark:retoredMark];
    return memento;
}


- (id<Mark>)mark {
    return self.mark;
}

#pragma mark - private method
- (instancetype)initWithMark:(id<Mark>)aMark {
    if (self = [super init]) {
        self.mark = aMark;
    }
    return self;
}

@end
