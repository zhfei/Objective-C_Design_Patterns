//
//  ZHFSetStrokeWidthBlockCommand.h
//  Objective-C_Design_Patterns
//
//  Created by zhoufei on 2019/1/24.
//  Copyright © 2019年 周飞. All rights reserved.
//

#import "ZHFCommand.h"
#import "ZHFRGBValuesProviderProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface ZHFSetStrokeWidthBlockCommand : ZHFCommand
{
@private
    LineWidthValuesProviderBlock providerBlock_;
}
@property (nonatomic, copy)LineWidthValuesProviderBlock providerBlock;

@end

NS_ASSUME_NONNULL_END
