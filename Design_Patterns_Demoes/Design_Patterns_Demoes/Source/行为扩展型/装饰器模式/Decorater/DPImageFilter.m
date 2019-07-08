//
//  DPImageFilter.m
//  Design_Patterns_Demoes
//
//  Created by 周飞 on 2019/7/6.
//  Copyright © 2019年 zhf. All rights reserved.
//

#import "DPImageFilter.h"

@interface DPImageFilter()
@property (nonatomic, strong) DPImageComponent *imageComponent;
@end

@implementation DPImageFilter
+ (instancetype)imageFilter:(DPImageComponent *)component {
    DPImageFilter *filter = [DPImageFilter new];
    filter.imageComponent = component;
    return filter;
}
- (void)operation {
    [self.imageComponent operation];
}

@end
