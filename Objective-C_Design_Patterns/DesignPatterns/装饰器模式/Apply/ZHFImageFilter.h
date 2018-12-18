//
//  ZHFImageFilter.h
//  Objective-C_Design_Patterns
//
//  Created by zhoufei on 2018/12/18.
//  Copyright © 2018年 周飞. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ZHFImageComponent.h"

NS_ASSUME_NONNULL_BEGIN

@interface ZHFImageFilter : NSObject <ZHFImageComponent>
{
    @private
    id<ZHFImageComponent> component_;
}
@property (nonatomic, strong) id<ZHFImageComponent> component;
- (instancetype)initWithImageComponent:(id<ZHFImageComponent>)component;
- (void)apply;
- (id)forwardingTargetForSelector:(SEL)aSelector;
@end

NS_ASSUME_NONNULL_END
