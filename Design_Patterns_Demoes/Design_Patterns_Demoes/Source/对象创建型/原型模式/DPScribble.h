//
//  Scribble.h
//  Design_Patterns_Demoes
//
//  Created by 周飞 on 2019/4/5.
//  Copyright © 2019年 zhf. All rights reserved.
//
//  涂鸦模型， 画板上所有绘画的结构总和

#import <Foundation/Foundation.h>
#import "Mark.h"

NS_ASSUME_NONNULL_BEGIN

@interface DPScribble : NSObject
/**
 添加新痕迹到画板

 @param mark 绘画元素(Stroke/Vertex/Dot)
 @param shouldAddToPreviousMark 是否新建一个独立的节点组合（常用的节点组合为Stroke, Dot）
 */
- (void)addMark:(id <Mark>)mark shouldAddToPreviousMark:(BOOL)shouldAddToPreviousMark;
- (void)removeMark:(id <Mark>)mark;
- (void)removeAllMarks;
@end

NS_ASSUME_NONNULL_END
