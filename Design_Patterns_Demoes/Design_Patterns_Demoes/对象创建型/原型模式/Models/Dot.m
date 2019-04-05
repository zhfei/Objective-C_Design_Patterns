//
//  Dot.m
//  Design_Patterns_Demoes
//
//  Created by 周飞 on 2019/3/31.
//  Copyright © 2019年 zhf. All rights reserved.
//

#import "Dot.h"

@implementation Dot
@synthesize color = _color, size = _size;

- (void)addMark:(id<Mark>)mark {}
- (void)removeMark:(id<Mark>)mark {}
- (void)removeAllMarks {}
- (id<Mark>)childAtIndex:(int)index {return nil;}
- (id<Mark>)lastChild {return nil;}

- (id)copyWithZone:(NSZone *)zone {
    Dot *dot = [[[self class] alloc] initWithLocation:self.location];
    dot.size = self.size;
    dot.color = [UIColor colorWithCGColor:[self.color CGColor]];
    return dot;
}

@end
