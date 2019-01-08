//
//  ZHFScribbleMemento.h
//  Objective-C_Design_Patterns
//
//  Created by zhoufei on 2019/1/7.
//  Copyright © 2019年 周飞. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Mark.h"
NS_ASSUME_NONNULL_BEGIN

@interface ZHFScribbleMemento : NSObject
{
    @private
    id<Mark> mark_;
    BOOL hasCompleteSnapshot_;
}
@property (nonatomic, assign) BOOL hasCompleteSnapshot;

+ (ZHFScribbleMemento *)mementoWithData:(NSData *)data;
- (NSData *)data;

- (id<Mark>)mark;
@end

NS_ASSUME_NONNULL_END
