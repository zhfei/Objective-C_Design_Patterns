//
//  GlobalConfig.m
//  Objective-C_Design_Patterns
//
//  Created by zhoufei on 2018/10/6.
//  Copyright © 2018年 周飞. All rights reserved.
//

#import "GlobalConfig.h"
#import <YYModel/YYModel.h>
#import "FileManager.h"

@implementation GlobalConfig
SingletonM(GlobalConfig)
- (instancetype)init
{
    self = [super init];
    if (self) {
        [FileManager createDir:kConfigPath];
        NSDictionary *dict = [self readConfig];
        if (!dict) {
            self.lineWidth = 2;
            self.lineColorHex = @"#000000";
            [self saveConfig];
        } else {
            [self setup:dict];
        }
    }
    return self;
}

- (void)setup:(NSDictionary *)dict {
    self.lineColorHex = dict[@"lineColorHex"];
    self.lineWidth = [dict[@"lineWidth"] floatValue];
}

- (void)saveConfig {
    id dict = [self yy_modelToJSONObject];
    [FileManager saveObjet:dict toPath:[kConfigPath stringByAppendingPathComponent:@"config.plist"]];
}
- (NSDictionary *)readConfig {
    NSDictionary *dict = [FileManager readObjetFromPath:[kConfigPath stringByAppendingPathComponent:@"config.plist"]];
    return dict;
}
@end
