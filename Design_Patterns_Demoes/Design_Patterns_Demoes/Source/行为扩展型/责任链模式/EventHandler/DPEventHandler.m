//
//  DPEventHandler.m
//  Design_Patterns_Demoes
//
//  Created by 周飞 on 2019/6/21.
//  Copyright © 2019年 zhf. All rights reserved.
//

#import "DPEventHandler.h"

@interface DPEventHandler ()

@end

@implementation DPEventHandler
- (void)handlerEvent:(DPEvent *)event {
    [self.nextEventHandler handlerEvent:event];
}
@end
