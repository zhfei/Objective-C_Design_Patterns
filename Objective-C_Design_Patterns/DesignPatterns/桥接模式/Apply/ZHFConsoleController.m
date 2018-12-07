//
//  ZHFConsoleController.m
//  Objective-C_Design_Patterns
//
//  Created by 周飞 on 2018/12/8.
//  Copyright © 2018年 周飞. All rights reserved.
//

#import "ZHFConsoleController.h"

@implementation ZHFConsoleController
@synthesize emulator = emulator_;

- (void)setCommand:(ZHFConsoleCommand)command {
    [emulator_ loadInstructionsForCommand:command];
    [emulator_ executeInstructions];
}
@end
