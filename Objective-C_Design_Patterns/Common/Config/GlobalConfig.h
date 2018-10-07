//
//  GlobalConfig.h
//  Objective-C_Design_Patterns
//
//  Created by zhoufei on 2018/10/6.
//  Copyright © 2018年 周飞. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GlobalConfig : NSObject
SingletonH(GlobalConfig)
@property (nonatomic, strong) NSString *lineColorHex;
@property (nonatomic, assign) CGFloat lineWidth;

- (void)saveConfig;
- (NSDictionary *)readConfig;
@end
