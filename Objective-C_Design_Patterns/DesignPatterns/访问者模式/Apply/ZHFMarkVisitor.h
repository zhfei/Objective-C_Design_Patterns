//
//  ZHFMarkVisitor.h
//  Objective-C_Design_Patterns
//
//  Created by zhoufei on 2018/12/17.
//  Copyright © 2018年 周飞. All rights reserved.
//

#import <Foundation/Foundation.h>
@protocol Mark;
@class Dot, Vertex, Stroke;

NS_ASSUME_NONNULL_BEGIN

@protocol ZHFMarkVisitor <NSObject>
- (void)visitMark:(id <Mark>)mark;
- (void)visitDot:(Dot *)dot;
- (void)visitVertex:(Vertex *)vertex;
- (void)visitStroke:(Stroke *)stroke;
@end

NS_ASSUME_NONNULL_END
