//
//  FileManager.m
//  Objective-C_Design_Patterns
//
//  Created by zhoufei on 2018/10/6.
//  Copyright © 2018年 周飞. All rights reserved.
//

#import "FileManager.h"

@implementation FileManager
+ (NSString *)documentPath {
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths objectAtIndex:0];
    return documentsDirectory;
}
//返回 "document/dir/" 文件夹路径,没有则创建
+ (NSString *)getDirectoryForDocuments:(NSString*) dir
{
    NSString* dirPath = [[self documentPath] stringByAppendingPathComponent:dir];
    [self createDir:dirPath];
    return dirPath;
}
//返回 "document/filename" 路径
+ (NSString*)getFilePathForDocuments:(NSString*)filename
{
    return [[self documentPath] stringByAppendingPathComponent:filename];
}

+ (void)saveObjet:(NSDictionary *)dict toPath:(NSString *)path {
    [dict writeToFile:path atomically:YES];
}
+ (id)readObjetFromPath:(NSString *)path {
    if ([[NSFileManager defaultManager] fileExistsAtPath:path]) {
        return [NSDictionary dictionaryWithContentsOfFile:path];
    }
    return nil;
}

+ (BOOL)createDir:(NSString *)dirPath
{
    BOOL creatingSuccess = NO;
    
    BOOL isDir = NO;
    BOOL isCreated = [[NSFileManager defaultManager] fileExistsAtPath:dirPath isDirectory:&isDir];
    if ( isCreated == NO || isDir == NO )
    {
        NSError* error = nil;
        BOOL success = [[NSFileManager defaultManager] createDirectoryAtPath:dirPath withIntermediateDirectories:YES attributes:nil error:&error];
        if(success == NO) {
            NSLog(@"create dir error: %@",error.debugDescription);
        } else {
            creatingSuccess = YES;
        }
    }
    return creatingSuccess;
}
@end
