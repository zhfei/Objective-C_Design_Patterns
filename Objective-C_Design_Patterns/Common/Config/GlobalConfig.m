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
- (instancetype)init
{
    self = [super init];
    if (self) {
        
    }
    return self;
}
- (void)saveConfig {
    id dict = [self yy_modelToJSONObject];
    [FileManager saveObjet:dict toPath:kConfigPath];
}
- (void)readConfig {
    NSDictionary *dict = [FileManager readObjetFromPath:kConfigPath];
    GlobalConfig *config = [GlobalConfig yy_modelWithDictionary:dict];
    NSLog(@"%@",config);
}
@end
