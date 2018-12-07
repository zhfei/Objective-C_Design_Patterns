//
//  ZHFConsoleEmulator.h
//  Objective-C_Design_Patterns
//
//  Created by 周飞 on 2018/12/7.
//  Copyright © 2018年 周飞. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ZHFConsoleCommands.h"

NS_ASSUME_NONNULL_BEGIN

@interface ZHFConsoleEmulator : NSObject
- (void)loadInstructionsForCommand:(ZHFConsoleCommand)command;
- (void)executeInstructions;

@end

NS_ASSUME_NONNULL_END
