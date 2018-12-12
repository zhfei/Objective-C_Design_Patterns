//
//  ZHFDoraemonEnvPlugin.m
//  Objective-C_Design_Patterns
//
//  Created by 周飞 on 2018/12/12.
//  Copyright © 2018年 周飞. All rights reserved.
//

#import "ZHFDoraemonEnvPlugin.h"
#import <DoraemonManager.h>

@interface ZHFDoraemonEnvPlugin ()

@end

@implementation ZHFDoraemonEnvPlugin

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)pluginDidLoad {
//    [APP_INTERACOTR.rootNav openURL:@"KDSJ://KDDoraemonSFViewController"];
    [[DoraemonManager shareInstance] hiddenHomeWindow];
}

@end
