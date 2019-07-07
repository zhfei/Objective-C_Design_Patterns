//
//  DPImageFilter.m
//  Design_Patterns_Demoes
//
//  Created by 周飞 on 2019/7/6.
//  Copyright © 2019年 zhf. All rights reserved.
//

#import "DPImageFilter.h"

@implementation DPImageFilter
- (void)operation {
    [self.imageComponent operation];
}

- (void)addBehaviour {
    NSLog(@"父过滤器原始动作...");
}
@end
