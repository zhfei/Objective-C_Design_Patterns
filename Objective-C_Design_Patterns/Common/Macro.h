//
//  Macro.h
//  Objective-C_Design_Patterns
//
//  Created by zhoufei on 2018/10/6.
//  Copyright © 2018年 周飞. All rights reserved.
//

#ifndef Macro_h
#define Macro_h

#if DEBUG
#define NSLog(...) NSLog(__VA_ARGS__)
#else
#define NSLog(...)
#endif

#define kConfigPath [NSHomeDirectory() stringByAppendingPathComponent:@"Documents/config"]

#endif /* Macro_h */

