//
//  ZHFMarkRenderer.h
//  Objective-C_Design_Patterns
//
//  Created by zhoufei on 2018/12/17.
//  Copyright © 2018年 周飞. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ZHFMarkVisitor.h"

NS_ASSUME_NONNULL_BEGIN

@interface ZHFMarkRenderer : NSObject <ZHFMarkVisitor>
{
    @private
    BOOL shouldMoveContextToDot_;
    @protected
    CGContextRef context_;
}
- (instancetype)initWithCGContext:(CGContextRef)context;

@end

NS_ASSUME_NONNULL_END
