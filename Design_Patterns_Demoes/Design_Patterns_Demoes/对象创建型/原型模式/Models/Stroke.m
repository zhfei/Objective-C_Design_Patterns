//
//  Stroke.m
//  Design_Patterns_Demoes
//
//  Created by 周飞 on 2019/3/31.
//  Copyright © 2019年 zhf. All rights reserved.
//

#import "Stroke.h"

@interface Stroke ()
@property (nonatomic, strong) NSMutableArray<id<Mark>> *marksArray;
@end

@implementation Stroke
@dynamic location;
@synthesize color = _color, size = _size;
#pragma mark - Life Cycle

#pragma mark - Getter, Setter
- (CGPoint)location {
    return [self.marksArray.firstObject location];
}

- (void)setLocation:(CGPoint)location {}

- (NSMutableArray *)marksArray {
    if (!_marksArray) {
        _marksArray = @[].mutableCopy;
    }
    return _marksArray;
}
#pragma mark - Event

#pragma mark - Public Method
- (void)addMark:(id<Mark>)mark {
    [self.marksArray addObject:mark];
}

- (void)removeMark:(id<Mark>)mark {
    [self.marksArray removeObject:mark];
}

- (void)removeAllMarks {
    [self.marksArray removeAllObjects];
}

- (id<Mark>)childAtIndex:(int)index {
    return self.marksArray[index];
}
- (id<Mark>)lastChild {
    return self.marksArray.lastObject;
}

#pragma mark - Private Method
- (id)copyWithZone:(NSZone *)zone {
    Stroke *stroke = [[[self class] alloc] init];
    stroke.color = [UIColor colorWithCGColor:[self.color CGColor]];
    stroke.size = self.size;

    NSMutableArray *arrayM = [NSMutableArray arrayWithCapacity:[self.marksArray count]];
    for (id<Mark> mark in self.marksArray) {
        [arrayM addObject:[mark copy]];
    }
    stroke.marksArray = arrayM;

    return stroke;
}

- (void)drawWithContext:(CGContextRef)context {
    CGContextMoveToPoint(context, self.location.x, self.location.y);
    
    [self.marksArray enumerateObjectsUsingBlock:^(id<Mark>  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [obj drawWithContext:context];
    }];
    
    CGContextSetStrokeColorWithColor(context, self.color.CGColor);
    CGContextSetLineWidth(context, self.size.width);
    CGContextSetLineCap(context, kCGLineCapRound);
    CGContextStrokePath(context);
}

@end
