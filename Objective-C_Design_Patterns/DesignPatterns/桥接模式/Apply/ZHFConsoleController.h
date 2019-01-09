//
//  ZHFConsoleController.h
//  Objective-C_Design_Patterns
//
//  Created by 周飞 on 2018/12/8.
//  Copyright © 2018年 周飞. All rights reserved.
//
//  虚拟控制器基类，随着不同的平台，控制器的功能，样式也会不同
//

#import <Foundation/Foundation.h>
#import "ZHFConsoleEmulator.h"

NS_ASSUME_NONNULL_BEGIN

@interface ZHFConsoleController : NSObject
{
    @private
    ZHFConsoleEmulator *emulator_;
}
@property (nonatomic, strong)ZHFConsoleEmulator *emulator;
- (void)setCommand:(ZHFConsoleCommand)command;

@end

NS_ASSUME_NONNULL_END
