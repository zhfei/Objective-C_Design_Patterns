//
//  ZHFScribble.h
//  Objective-C_Design_Patterns
//
//  Created by 周飞 on 2018/12/8.
//  Copyright © 2018年 周飞. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ZHFScribbleMemento.h"
#import "Mark.h"

NS_ASSUME_NONNULL_BEGIN

@interface ZHFScribble : NSObject
{
    @private
    id <Mark> parentMark_;
    id <Mark> incrementMark_;
}
- (void)addMark:(id <Mark>)mark shouldAddToPreviousMark:(BOOL)shouldAddToPreviousMark;
- (void)removeMark:(id <Mark>)mark;
- (void)removeAllMarks;

#pragma mark - 备忘录方法
- (id)initWithMemento:(ZHFScribbleMemento *)aMemento;
+ (ZHFScribble *)scribbleWithMemento:(ZHFScribbleMemento *)aMemento;
- (ZHFScribbleMemento *)scribbleMemento;
- (ZHFScribbleMemento *)scribbleMementoWithCompleteSnapshot:(BOOL)hasCompleteSnapshot;
- (void)attachStateFromMemento:(ZHFScribbleMemento *)aMemento;
@end

NS_ASSUME_NONNULL_END
