//
//  ZHFDrawScribbleCommand.m
//  Objective-C_Design_Patterns
//
//  Created by 周飞 on 2019/1/1.
//  Copyright © 2019年 周飞. All rights reserved.
//

#import "ZHFDrawScribbleCommand.h"

NSString *const ScribbleObjectUserInfoKey = @"ScribbleObjectUserInfoKey";
NSString *const MarkObjectUserInfoKey = @"MarkObjectUserInfoKey";
NSString *const AddToPreviousMarkUserInfoKey = @"AddToPreviousMarkUserInfoKey";

@implementation ZHFDrawScribbleCommand
- (void)execute {
    if (!userInfo_) return;
    
    scribble_ = [userInfo_ objectForKey:ScribbleObjectUserInfoKey];
    mark_ = [userInfo_ objectForKey:MarkObjectUserInfoKey];
    shouldAddToPreviousMark_ = [(NSNumber *)[userInfo_ objectForKey:AddToPreviousMarkUserInfoKey] boolValue];
    [scribble_ addMark:mark_ shouldAddToParentMark:shouldAddToPreviousMark_];
}
- (void)undo {
    [scribble_ removeMark:mark_];
}
@end
