//
//  ZHFTouchConsoleController.m
//  Objective-C_Design_Patterns
//
//  Created by 周飞 on 2018/12/8.
//  Copyright © 2018年 周飞. All rights reserved.
//

#import "ZHFTouchConsoleController.h"

@implementation ZHFTouchConsoleController
- (void)up {
    [super setCommand:ZHFConsoleCommandUP];
}
- (void)down {
    [super setCommand:ZHFConsoleCommandDown];
}
- (void)left {
    [super setCommand:ZHFConsoleCommandLeft];
}
- (void)right {
    [super setCommand:ZHFConsoleCommandRight];
}
- (void)select {
    [super setCommand:ZHFConsoleCommandSelect];
}
- (void)start {
    [super setCommand:ZHFConsoleCommandStart];
}
- (void)action1 {
    [super setCommand:ZHFConsoleCommandAction1];
}
- (void)action2 {
    [super setCommand:ZHFConsoleCommandAction2];
}
@end
