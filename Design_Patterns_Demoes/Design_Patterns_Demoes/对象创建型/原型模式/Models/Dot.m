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

- (id)copyWithZone:(NSZone *)zone {
    Dot *dot = [[[self class] alloc] initWithLocation:self.location];
    dot.size = self.size;
    dot.color = [UIColor colorWithCGColor:[self.color CGColor]];
    return dot;
}

@end
