//
//  DPOriginator.m
//  Design_Patterns_Demoes
//
//  Created by 周飞 on 2019/8/12.
//  Copyright © 2019年 zhf. All rights reserved.
//

#import "DPOriginator.h"

@implementation DPOriginator
+ (instancetype)originatorWithMemento:(NSData *)memento {
    return [NSKeyedUnarchiver unarchivedObjectOfClass:[self class] fromData:memento error:nil];
}

- (NSData *)memento {
    return [NSKeyedArchiver archivedDataWithRootObject:self requiringSecureCoding:NO error:nil];
}


#pragma mark - Coding

- (void)encodeWithCoder:(NSCoder *)aCoder {
    [aCoder encodeObject:self.state forKey:@"state"];
}

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super init];
    if (self) {
        self.state = [coder decodeObjectForKey:@"state"];
    }
    return self;
}

@end
