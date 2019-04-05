//
//  Mark.h
//  Design_Patterns_Demoes
//
//  Created by 周飞 on 2019/3/31.
//  Copyright © 2019年 zhf. All rights reserved.
//
//  涂鸦痕迹的标示

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol Mark <NSObject,NSCopying>
@property (nonatomic, assign) CGSize size;
@property (nonatomic, strong) UIColor *color;
@property (nonatomic, assign) CGPoint location;

#pragma mark - 基本方法
- (void)addMark:(id<Mark>)mark;
- (void)removeMark:(id<Mark>)mark;
- (void)removeAllMarks;
- (id<Mark>)childAtIndex:(int)index;
- (id<Mark>)lastChild;

#pragma mark - 原型模式
- (id<Mark>)copy;

#pragma mark - draw
- (void)drawWithContext:(CGContextRef)context;
@end

NS_ASSUME_NONNULL_END
