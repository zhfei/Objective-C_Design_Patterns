//
//  ZHFMarkRenderer.m
//  Objective-C_Design_Patterns
//
//  Created by zhoufei on 2018/12/17.
//  Copyright © 2018年 周飞. All rights reserved.
//

#import "ZHFMarkRenderer.h"
#import "Dot.h"
#import "Stroke.h"
#import "Vertex.h"

@implementation ZHFMarkRenderer
- (instancetype)initWithCGContext:(CGContextRef)context {
    if (self = [super init]) {
        context_ = context;
        shouldMoveContextToDot_ = YES;
    }
    return self;
}


#pragma mark - 协议实现
- (void)visitMark:(id<Mark>)mark {
    
}
- (void)visitDot:(Dot *)dot {
    CGFloat x = dot.location.x;
    CGFloat y = dot.location.y;
    CGRect rect = CGRectMake(x, y, dot.size.width, dot.size.height);
    CGContextSetFillColorWithColor(context_, dot.color.CGColor);
    CGContextFillEllipseInRect(context_, rect);
}

- (void)visitVertex:(Vertex *)vertex {
    if (shouldMoveContextToDot_) {
        CGContextMoveToPoint(context_, vertex.location.x, vertex.location.y);
        shouldMoveContextToDot_ = NO;
    } else {
        CGContextAddLineToPoint(context_, vertex.location.x, vertex.location.y);
    }
}

- (void)visitStroke:(Stroke *)stroke {
    CGContextSetFillColorWithColor(context_, stroke.color.CGColor);
    CGContextSetLineWidth(context_, stroke.size.width);
    CGContextSetLineCap(context_, kCGLineCapRound);
    CGContextStrokePath(context_);
    shouldMoveContextToDot_ = YES;
}

@end
