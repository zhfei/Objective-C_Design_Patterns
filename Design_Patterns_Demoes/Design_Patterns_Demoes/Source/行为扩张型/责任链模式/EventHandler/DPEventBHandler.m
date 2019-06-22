//
//  DPEventBHandler.m
//  Design_Patterns_Demoes
//
//  Created by 周飞 on 2019/6/22.
//  Copyright © 2019年 zhf. All rights reserved.
//

#import "DPEventBHandler.h"
#import "DPEventB.h"

@implementation DPEventBHandler
- (void)handlerEvent:(DPEvent *)event {
    if ([event isKindOfClass:[DPEventB class]]) {
        NSLog(@"处理DPEventB...");
    } else {
        [super handlerEvent:event];
    }
}
@end
