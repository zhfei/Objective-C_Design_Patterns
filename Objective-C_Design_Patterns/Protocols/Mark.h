//
//  Mark.h
//  Objective-C_Design_Patterns
//
//  Created by zhoufei on 2018/10/4.
//  Copyright © 2018年 周飞. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "ZHFMarkVisitor.h"

@protocol Mark <NSObject,NSCopying,NSCoding>
@property (nonatomic, strong) UIColor *color;
@property (nonatomic, assign) CGSize size;
@property (nonatomic, assign) CGPoint location;
- (void)addMark:(id<Mark>)mark;
- (void)removeMark:(id<Mark>)mark;
- (void)removeAllMarks;
- (id<Mark>)childAtIndex:(int)index;
- (id<Mark>)lastChild;
- (NSUInteger)count;
- (instancetype)copy;
//迭代器
- (NSEnumerator *)enumerator;
//内部迭代器
- (void)enumerateMarksUsingBlock:(void (^) (id <Mark> mark, BOOL *stop))block;

//访问者模式
- (void)acceptMarkVisitor:(id <ZHFMarkVisitor>)visitor;

#pragma mark - 绘图
- (void)drawWithContext:(CGContextRef)context;



@end
