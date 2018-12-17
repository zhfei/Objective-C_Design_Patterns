//
//  Vertex.m
//  Objective-C_Design_Patterns
//
//  Created by zhoufei on 2018/10/4.
//  Copyright © 2018年 周飞. All rights reserved.
//

#import "Vertex.h"


@implementation Vertex
@synthesize location;
@dynamic color,size;
- (void)acceptMarkVisitor:(id<ZHFMarkVisitor>)visitor {
    [visitor visitVertex:self];
}

- (instancetype)initWithLocation:(CGPoint)location {
    self = [super init];
    if (self) {
        self.location = location;
    }
    return self;
}

- (void)drawWithContext:(CGContextRef)context {
    CGContextAddLineToPoint(context, self.location.x, self.location.y);
}

- (id)copyWithZone:(NSZone *)zone {
    Vertex *obj = [[[self class] alloc] initWithLocation:self.location];
    return obj;
}

#pragma mark - 属性操作
- (UIColor *)color{return nil;}
- (void)setColor:(UIColor *)color{}
- (CGSize)size{return CGSizeZero;}
- (void)setSize:(CGSize)size{}

#pragma mark - Mark操作
- (void)addMark:(id<Mark>)mark {}
- (void)removeMark:(id<Mark>)mark {}
- (void)removeAllMarks {}
- (id<Mark>)childAtIndex:(int)index {return nil;}
- (id<Mark>)lastChild {return nil;}
- (NSUInteger)count {return 0;}

@end
