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

// .h文件
#define SingletonH(name) + (instancetype)shared##name;
// .m文件
#define SingletonM(name) \
static id _instance; \
\
+ (instancetype)allocWithZone:(struct _NSZone *)zone \
{ \
static dispatch_once_t onceToken; \
dispatch_once(&onceToken, ^{ \
_instance = [super allocWithZone:zone]; \
}); \
return _instance; \
} \
\
+ (instancetype)shared##name \
{ \
static dispatch_once_t onceToken; \
dispatch_once(&onceToken, ^{ \
_instance = [[self alloc] init]; \
}); \
return _instance; \
} \
\
- (id)copyWithZone:(NSZone *)zone \
{ \
return _instance; \
}


#define kConfigPath [NSHomeDirectory() stringByAppendingPathComponent:@"Documents/Config"]

#define ColorA(R, G, B, A) [UIColor colorWithRed:R/255.0 green:G/255.0 blue:B/255.0 alpha:A]
#define Color(R, G, B) [UIColor colorWithRed:R/255.0 green:G/255.0 blue:B/255.0 alpha:1]
#define WhiteColor       [UIColor whiteColor]
#define BlackColor       [UIColor blackColor]
#define GrayColor        [UIColor grayColor]
#define GedColor         [UIColor redColor]

#define FontWithSize(num)          [UIFont systemFontOfSize:num]
#define FixNull(param, default) ((param == nil || [param isEqual:[NSNull null]]) ? default : param)

#endif /* Macro_h */

