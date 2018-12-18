//
//  ZHFImageComponent.h
//  Objective-C_Design_Patterns
//
//  Created by zhoufei on 2018/12/18.
//  Copyright © 2018年 周飞. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol ZHFImageComponent <NSObject>
- (void)drawAtPoint:(CGPoint)point;
- (void)drawAtPoint:(CGPoint)point blendMode:(CGBlendMode)blendMode alpha:(CGFloat)alpha;
- (void)drawInRect:(CGRect)rect;
- (void)drawInRect:(CGRect)rect blendMode:(CGBlendMode)blendMode alpha:(CGFloat)alpha;
- (void)drawAsPatternInRect:(CGRect)rect;
@end

NS_ASSUME_NONNULL_END
