//
//  ZHFTopWindow.m
//  Objective-C_Design_Patterns
//
//  Created by zhoufei on 2018/10/11.
//  Copyright © 2018年 周飞. All rights reserved.
//

#import "ZHFTopWindow.h"

@implementation ZHFTopWindow
SingletonM(ZHFTopWindow)
- (instancetype)init {
    self = [super initWithFrame:[UIScreen mainScreen].bounds];
    if (self) {
        self.windowLevel = CGFLOAT_MAX;
        UIViewController *rootVC = [[UIViewController alloc] init];
        self.rootViewController = rootVC;
    }
    return self;
}
@end
