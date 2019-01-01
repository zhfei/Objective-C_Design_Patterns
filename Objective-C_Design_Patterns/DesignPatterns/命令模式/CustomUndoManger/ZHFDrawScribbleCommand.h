//
//  ZHFDrawScribbleCommand.h
//  Objective-C_Design_Patterns
//
//  Created by 周飞 on 2019/1/1.
//  Copyright © 2019年 周飞. All rights reserved.
//

#import "ZHFCustomCommand.h"
#import "ZHFScribble.h"

NS_ASSUME_NONNULL_BEGIN

@interface ZHFDrawScribbleCommand : ZHFCustomCommand
{
    @private
    ZHFScribble *scribble_;
    id<Mark> mark_;
    BOOL shouldAddToPreviousMark_;
}

@end

NS_ASSUME_NONNULL_END
