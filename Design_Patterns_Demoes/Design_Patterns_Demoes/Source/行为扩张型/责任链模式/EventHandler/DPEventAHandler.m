//
//  DPEventAHandler.m
//  Design_Patterns_Demoes
//
//  Created by 周飞 on 2019/6/21.
//  Copyright © 2019年 zhf. All rights reserved.
//

#import "DPEventAHandler.h"
#import "DPEventA.h"

@implementation DPEventAHandler
- (void)handlerEvent:(DPEvent *)event {
    if ([event isKindOfClass:[DPEventA class]]) {
        NSLog(@"处理DPEventA...");
    } else {
        [super handlerEvent:event];
    }
}
@end
