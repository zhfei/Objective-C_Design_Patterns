//
//  ZHFConsoleEmulator.h
//  Objective-C_Design_Patterns
//
//  Created by 周飞 on 2018/12/7.
//  Copyright © 2018年 周飞. All rights reserved.
//
//  虚拟仿真器，一个抽象基类，随着平台不同，仿真器也不同，命令的实现也不同
//  不同的仿真器实例，对命令的实现也不同

#import <Foundation/Foundation.h>
#import "ZHFConsoleCommands.h"

NS_ASSUME_NONNULL_BEGIN

@interface ZHFConsoleEmulator : NSObject
- (void)loadInstructionsForCommand:(ZHFConsoleCommand)command;
- (void)executeInstructions;

@end

NS_ASSUME_NONNULL_END
