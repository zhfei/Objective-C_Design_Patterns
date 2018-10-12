//
//  ZHFRequestParameter.m
//  Objective-C_Design_Patterns
//
//  Created by zhoufei on 2018/10/12.
//  Copyright © 2018年 周飞. All rights reserved.
//

#import "ZHFRequestParameter.h"

@interface ZHFRequestParameter()
@property (nonatomic, strong) NSString *defaultDomain;
@end

@implementation ZHFRequestParameter
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.defaultDomain = @"http://7xqkjm.com1.z0.glb.clouddn.com";
        //ZF_initData.zip
        self.requestMethod = ZHFRequestMethodGET;
    }
    return self;
}

- (NSString *)totalURLString {
    return [NSString stringWithFormat:@"%@/%@",self.defaultDomain,self.apiString];
}

@end
