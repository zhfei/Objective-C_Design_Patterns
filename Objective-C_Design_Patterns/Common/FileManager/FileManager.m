//
//  FileManager.m
//  Objective-C_Design_Patterns
//
//  Created by zhoufei on 2018/10/6.
//  Copyright © 2018年 周飞. All rights reserved.
//

#import "FileManager.h"

@implementation FileManager
+ (void)saveObjet:(NSDictionary *)dict toPath:(NSString *)path {
    if ([self createDir:path]) {
        [dict writeToFile:path atomically:NO];
    }
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
