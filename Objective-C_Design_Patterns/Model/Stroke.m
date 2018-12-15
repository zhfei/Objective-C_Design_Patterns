//
//  Stroke.m
//  Objective-C_Design_Patterns
//
//  Created by zhoufei on 2018/10/4.
//  Copyright © 2018年 周飞. All rights reserved.
//

#import "Stroke.h"
#import "Mark.h"
#import "ZHFMarkEnumerator.h"

@interface Stroke()
@property (nonatomic, strong) NSMutableArray<id<Mark>> *markArray;
@end

@implementation Stroke
@synthesize color,location,size;

- (void)drawWithContext:(CGContextRef)context {
    CGContextMoveToPoint(context, self.location.x, self.location.y);
    for (id<Mark> mark in self.markArray) {
        [mark drawWithContext:context];
    }
    CGContextSetLineWidth(context, self.size.width);
    CGContextSetLineCap(context, kCGLineCapRound);
    CGContextSetStrokeColorWithColor(context, [self.color CGColor]);
    CGContextStrokePath(context);
}


- (id)copyWithZone:(NSZone *)zone {
    Stroke *stroke = [[[self class] alloc] init];
    stroke.color = [UIColor colorWithCGColor:self.color.CGColor];
    stroke.size = self.size;
    stroke.location = self.location;
    
    NSMutableArray *targetArrayM = [NSMutableArray arrayWithCapacity:self.markArray.count];
    for (id<Mark> obj in self.markArray) {
        [targetArrayM addObject:[obj copy]];
    }
    stroke.markArray = targetArrayM;
    return stroke;
}

#pragma mark - 属性操作
- (void)setLocation:(CGPoint)location {}
- (CGPoint)location {
    if (_markArray.count) {
        return [[_markArray firstObject] location];
    } else {
        return CGPointZero;
    }
}


#pragma mark - Mark操作
- (NSMutableArray<id<Mark>> *)markArray {
    if (!_markArray) {
        _markArray = @[].mutableCopy;
    }
    return _markArray;
}

- (void)addMark:(id<Mark>)mark {
    [self.markArray addObject:mark];
}

- (void)removeMark:(id<Mark>)mark {
    //在当前节点中，就从当前节点删除，不在当前节点，就深度查找子节点
    if ([_markArray containsObject:mark]) {
        [self.markArray removeObject:mark];
    } else {
        [_markArray makeObjectsPerformSelector:@selector(removeMark:) withObject:mark];
    }
}

- (void)removeAllMarks {
    [self.markArray removeAllObjects];
}

- (id<Mark>)childAtIndex:(int)index {
    if (self.markArray.count == 0) {
        return nil;
    } else {
        return self.markArray[index];
    }
}

- (id<Mark>)lastChild {
    return self.markArray.lastObject;
}

- (NSUInteger)count {
    return self.markArray.count;
}

#pragma mark - 迭代器
- (NSEnumerator *)enumerator {
    return [[ZHFMarkEnumerator alloc] initWithMark:self];
}

@end
