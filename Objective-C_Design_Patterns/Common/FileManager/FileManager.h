//
//  FileManager.h
//  Objective-C_Design_Patterns
//
//  Created by zhoufei on 2018/10/6.
//  Copyright © 2018年 周飞. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FileManager : NSObject
//返回根目录路径 "document"
+ (NSString *)documentPath;
//返回 "document/dir/" 文件夹路径,没有则创建
+ (NSString*)getDirectoryForDocuments:(NSString*) dir;
//返回 "document/filename" 路径,没有则创建
+ (NSString*)getFilePathForDocuments:(NSString*)filename;


+ (void)saveObjet:(NSDictionary *)dict toPath:(NSString *)path;
+ (id)readObjetFromPath:(NSString *)path;
+ (BOOL)createDir:(NSString *)dirPath;
@end
