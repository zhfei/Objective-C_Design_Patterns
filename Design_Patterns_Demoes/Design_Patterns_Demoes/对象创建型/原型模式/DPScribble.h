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
{
@private
    id <Mark> parentMark_;
    id <Mark> incrementMark_;
}
- (void)addMark:(id <Mark>)mark shouldAddToPreviousMark:(BOOL)shouldAddToPreviousMark;
- (void)removeMark:(id <Mark>)mark;
- (void)removeAllMarks;
@end

NS_ASSUME_NONNULL_END
