//
//  ZHFConsoleCommands.h
//  Objective-C_Design_Patterns
//
//  Created by 周飞 on 2018/12/7.
//  Copyright © 2018年 周飞. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef enum : NSUInteger {
    ZHFConsoleCommandUP,
    ZHFConsoleCommandDown,
    ZHFConsoleCommandLeft,
    ZHFConsoleCommandRight,
    ZHFConsoleCommandSelect,
    ZHFConsoleCommandStart,
    ZHFConsoleCommandAction1,
    ZHFConsoleCommandAction2
} ZHFConsoleCommand;

@interface ZHFConsoleCommands : NSObject

@end

NS_ASSUME_NONNULL_END
