//
//  ZHFNetworking.h
//  Objective-C_Design_Patterns
//
//  Created by zhoufei on 2018/10/12.
//  Copyright © 2018年 周飞. All rights reserved.
//

#import <Foundation/Foundation.h>
@class ZHFRequestParameter;

@interface ZHFNetworking : NSObject
//异步请求
+ (void)asyncWithParameter:(ZHFRequestParameter *)parameter
                   success:(nullable void (^)(NSURLSessionDataTask *task, id _Nullable responseObject))success
                   failure:(nullable void (^)(NSURLSessionDataTask *_Nullable task, NSError *error))failure;
//同步请求
+ (void)syncWithParameter:(ZHFRequestParameter *)parameter
                  success:(nullable void (^)(NSURLSessionDataTask *task, id _Nullable responseObject))success
                  failure:(nullable void (^)(NSURLSessionDataTask *_Nullable task, NSError *error))failure;

/*!**上传***/
+ (void)uploadTaskWithRequest:(NSURLRequest *)request
                        fromFile:(NSURL *)fileURL
                        progress:(void (^)(NSProgress *uploadProgress))uploadProgressBlock
               completionHandler:(void (^)(NSURLResponse *response, id responseObject, NSError *error))completionHandler;

/*!**下载***/
+ (void)downloadTaskWithWithParameters:(ZHFRequestParameter *)parameter
                                 progress:(nullable void (^)(NSProgress *downloadProgress))downloadProgressBlock
                        completionHandler:(nullable void (^)(NSURLResponse *response, NSURL *_Nullable filePath, NSError *_Nullable error))completionHandler;
@end
