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

#pragma mark - Private Method

@end
