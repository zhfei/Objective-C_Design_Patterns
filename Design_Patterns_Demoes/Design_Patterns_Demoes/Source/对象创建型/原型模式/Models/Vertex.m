//
//  Vertex.m
//  Design_Patterns_Demoes
//
//  Created by 周飞 on 2019/3/31.
//  Copyright © 2019年 zhf. All rights reserved.
//

#import "Vertex.h"

@implementation Vertex
@synthesize location = _location;
@dynamic color,size;

- (instancetype)initWithLocation:(CGPoint)location {
    self = [super init];
    if (self) {
        _location = location;
    }
    return self;
}

- (void)addMark:(id<Mark>)mark {}
- (void)removeMark:(id<Mark>)mark {}
- (void)removeAllMarks {}
- (id<Mark>)childAtIndex:(int)index {return nil;}
- (id<Mark>)lastChild {return nil;}

- (id)copyWithZone:(NSZone *)zone {
    Vertex *ver = [[[self class] alloc] initWithLocation:self.location];
    return ver;
}

- (void)drawWithContext:(CGContextRef)context {
    CGContextAddLineToPoint(context, self.location.x, self.location.y);
}

@end
