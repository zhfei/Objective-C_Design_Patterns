//
//  ZHFRGBValuesProvider.h
//  Objective-C_Design_Patterns
//
//  Created by zhoufei on 2018/12/5.
//  Copyright © 2018年 周飞. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ZHFRGBValuesProviderProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface ZHFRGBValuesProvider : NSObject
@property (nonatomic, copy)RGBValuesProviderBlock block;
@end

NS_ASSUME_NONNULL_END
