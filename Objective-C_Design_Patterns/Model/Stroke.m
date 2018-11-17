//
//  Stroke.m
//  Objective-C_Design_Patterns
//
//  Created by zhoufei on 2018/10/4.
//  Copyright © 2018年 周飞. All rights reserved.
//

#import "Stroke.h"
#import "Mark.h"

@interface Stroke()
@property (nonatomic, strong) NSMutableArray<id<Mark>> *markArray;
@end

@implementation Stroke
@synthesize color,location,size;

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
    [self.markArray removeObject:mark];
}

- (void)removeAllMarks {
    [self.markArray removeAllObjects];
}

- (id<Mark>)childAtIndex:(int)index {
    return self.markArray[index];
}

- (id<Mark>)lastChild {
    return self.markArray.lastObject;
}

- (NSUInteger)count {
    return self.markArray.count;
}

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
@end
