//
//  ZHFMarkEnumerator.h
//  Objective-C_Design_Patterns
//
//  Created by 周飞 on 2018/12/15.
//  Copyright © 2018年 周飞. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Mark.h"
#import <BottomComponentLib/NSMutableArray+Stack.h>

NS_ASSUME_NONNULL_BEGIN

@interface ZHFMarkEnumerator : NSEnumerator
{
    @private
    NSMutableArray *stack_;
}

- (NSArray *)allObject;
- (id)nextObject;
@end

NS_ASSUME_NONNULL_END
