//
//  Mark.h
//  Objective-C_Design_Patterns
//
//  Created by zhoufei on 2018/10/4.
//  Copyright © 2018年 周飞. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol Mark <NSObject>
- (UIColor *)color;
- (CGSize)size;
- (CGPoint)location;
- (void)addMark:(id<Mark>)mark;
- (void)removeMark:(id<Mark>)mark;
- (id<Mark>)childAtIndex:(int)index;
- (id<Mark>)lastChild;
- (NSUInteger)count;

#pragma mark - 绘图
- (void)drawWithContext:(CGContextRef)context;

@end
