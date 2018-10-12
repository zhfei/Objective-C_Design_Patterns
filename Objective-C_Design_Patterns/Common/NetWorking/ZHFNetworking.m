//
//  ZHFNetworking.m
//  Objective-C_Design_Patterns
//
//  Created by zhoufei on 2018/10/12.
//  Copyright © 2018年 周飞. All rights reserved.
//

#import "ZHFNetworking.h"
#import "ZHFRequestParameter.h"
#import <AFNetworking/AFNetworking.h>

@implementation ZHFNetworking
//异步请求
+ (void)asyncWithParameter:(ZHFRequestParameter *)parameter
                   success:(nullable void (^)(NSURLSessionDataTask *task, id _Nullable responseObject))success
                   failure:(nullable void (^)(NSURLSessionDataTask *_Nullable task, NSError *error))failure {
        switch (parameter.requestMethod) {
        case ZHFRequestMethodGET:
        {
            [[AFHTTPSessionManager manager] GET:parameter.totalURLString parameters:parameter.parameterDictionary progress:^(NSProgress * _Nonnull downloadProgress) {
                
            } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
                NSLog(@"responseObject:%@",responseObject);
            } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
                
            }];
        }
            break;
        case ZHFRequestMethodPOST:
        {
            [[AFHTTPSessionManager manager] POST:parameter.totalURLString parameters:parameter.parameterDictionary progress:^(NSProgress * _Nonnull uploadProgress) {
                
            } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
                NSLog(@"responseObject:%@",responseObject);
            } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
                
            }];
        }
            break;
            
        default:
        {
            NSLog(@"待添加...");
        }
            break;
    }
}
//同步请求
+ (void)syncWithParameter:(ZHFRequestParameter *)parameter
                  success:(nullable void (^)(NSURLSessionDataTask *task, id _Nullable responseObject))success
                  failure:(nullable void (^)(NSURLSessionDataTask *_Nullable task, NSError *error))failure {
    
}
/*!**上传***/
+ (void)uploadTaskWithRequest:(NSURLRequest *)request
                        fromFile:(NSURL *)fileURL
                        progress:(void (^)(NSProgress *uploadProgress))uploadProgressBlock
               completionHandler:(void (^)(NSURLResponse *response, id responseObject, NSError *error))completionHandler {
    // step1. 初始化AFURLSessionManager对象
    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    AFURLSessionManager *manager = [[AFURLSessionManager alloc] initWithSessionConfiguration:configuration];
    // step2. 获取AFURLSessionManager的task对象
    NSURL *url;
    NSURLSessionDataTask *dataTask =[manager uploadTaskWithRequest:request fromFile:url progress:^(NSProgress * _Nonnull uploadProgress) {
        
    } completionHandler:^(NSURLResponse * _Nonnull response, id  _Nullable responseObject, NSError * _Nullable error) {
        
    }];
    // step3. 发动task
    [dataTask resume];
}
/*!**下载***/
+ (void)downloadTaskWithWithParameters:(ZHFRequestParameter *)parameter
                                 progress:(nullable void (^)(NSProgress *downloadProgress))downloadProgressBlock
                        completionHandler:(nullable void (^)(NSURLResponse *response, NSURL *_Nullable filePath, NSError *_Nullable error))completionHandler {
    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:parameter.totalURLString]];
    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    AFURLSessionManager *manager = [[AFURLSessionManager alloc] initWithSessionConfiguration:configuration];
    
    NSURLSessionDataTask *dataTask = [manager downloadTaskWithRequest:request progress:^(NSProgress * _Nonnull downloadProgress) {
        
    } destination:nil completionHandler:^(NSURLResponse * _Nonnull response, NSURL * _Nullable filePath, NSError * _Nullable error) {
        NSLog(@"response:%@",response);
    }];
    [dataTask resume];
}
@end
