//
//  ZHFRGBValuesProvider.h
//  Objective-C_Design_Patterns
//
//  Created by zhoufei on 2018/12/5.
//  Copyright © 2018年 周飞. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
typedef void(^RGBValuesProviderBlock)(CGFloat *red, CGFloat *green, CGFloat *blue);
typedef void(^LineWidthValuesProviderBlock)(CGFloat *width);
@protocol ZHFRGBValuesProviderProtocol <NSObject>

@end

NS_ASSUME_NONNULL_END
