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
}
- (void)addMark:(id <Mark>)mark shouldAddToParentMark:(BOOL)shouldAddToParentMark;
- (void)removeMark:(id <Mark>)mark;

- (ZHFScribbleMemento *)scribbleMemento;
@end

NS_ASSUME_NONNULL_END
