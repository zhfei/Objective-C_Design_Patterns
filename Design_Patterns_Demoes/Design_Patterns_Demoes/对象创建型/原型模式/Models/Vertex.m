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

- (id)copyWithZone:(NSZone *)zone {
    Vertex *ver = [[[self class] alloc] initWithLocation:self.location];
    return ver;
}

@end
