//
//  FileManager.h
//  Objective-C_Design_Patterns
//
//  Created by zhoufei on 2018/10/6.
//  Copyright © 2018年 周飞. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FileManager : NSObject
+ (void)saveObjet:(NSDictionary *)dict toPath:(NSString *)path;
+ (id)readObjetFromPath:(NSString *)path;
+ (BOOL)createDir:(NSString *)dirPath;
@end
