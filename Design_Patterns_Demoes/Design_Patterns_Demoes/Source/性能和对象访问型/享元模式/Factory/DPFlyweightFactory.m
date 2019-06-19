//
//  DPFlyweightFactory.m
//  Design_Patterns_Demoes
//
//  Created by zhoufei on 2019/6/14.
//  Copyright © 2019年 zhf. All rights reserved.
//

#import "DPFlyweightFactory.h"

static DPFlyweightFactory *shared;

@interface DPFlyweightFactory ()
@property (nonatomic, strong) NSMutableDictionary *flyweightPool;

@end

@implementation DPFlyweightFactory
#pragma mark - Life Cycle
+ (instancetype)sharedFlyweightFactory {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shared = [[self alloc] init];
    });
    return shared;
}

+ (instancetype)allocWithZone:(struct _NSZone *)zone {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shared = [super allocWithZone:zone];
    });
    return shared;
}

- (id)copy {
    return shared;
}

- (id)mutableCopy {
    return shared;
}


#pragma mark - Private Method

#pragma mark - Public Method
- (DPFlyweightModel *)flyweightModelWithName:(NSString *)name {
    DPFlyweightModel *target = self.flyweightPool[name];
    if (!target) {
        DPFlyweightModel *model = [DPFlyweightModel new];
        model.flower.image = [UIImage imageNamed:name];
        model.area = CGRectZero;
        [self.flyweightPool setObject:model forKey:name];
    }
    return target;
}

#pragma mark - Event

#pragma mark - Delegate

#pragma mark - Getter, Setter
- (NSMutableDictionary *)flyweightPool {
    if (!_flyweightPool) {
        _flyweightPool = @{}.mutableCopy;
    }
    return _flyweightPool;
}

#pragma mark - NSCopying

#pragma mark - NSObject



@end
