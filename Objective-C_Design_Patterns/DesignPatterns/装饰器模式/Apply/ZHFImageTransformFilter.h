//
//  ZHFImageTransformFilter.h
//  Objective-C_Design_Patterns
//
//  Created by zhoufei on 2018/12/18.
//  Copyright © 2018年 周飞. All rights reserved.
//

#import "ZHFImageFilter.h"

NS_ASSUME_NONNULL_BEGIN

@interface ZHFImageTransformFilter : ZHFImageFilter
{
    @private
    CGAffineTransform transform_;
}
@property (nonatomic, assign) CGAffineTransform transform;
- (instancetype)initWithImageComponent:(id<ZHFImageComponent>)component
                             transform:(CGAffineTransform)transform;

@end

NS_ASSUME_NONNULL_END
