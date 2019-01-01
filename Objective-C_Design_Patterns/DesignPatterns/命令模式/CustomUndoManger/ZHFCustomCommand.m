//
//  ZHFCustomCommand.m
//  Objective-C_Design_Patterns
//
//  Created by 周飞 on 2019/1/1.
//  Copyright © 2019年 周飞. All rights reserved.
//

#import "ZHFCustomCommand.h"

@implementation ZHFCustomCommand
@synthesize userInfo = userInfo_;
- (void)execute {
    //子类需要实现
    [NSException exceptionWithName:@"父类方法" reason:@"方法没有实现" userInfo:nil];
}
- (void)undo {
    //什么也不做
}
@end
