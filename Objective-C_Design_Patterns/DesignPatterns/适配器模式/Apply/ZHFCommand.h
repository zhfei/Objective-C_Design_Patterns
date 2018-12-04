//
//  ZHFCommand.h
//  Objective-C_Design_Patterns
//
//  Created by zhoufei on 2018/12/4.
//  Copyright © 2018年 周飞. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ZHFCommand : NSObject
{
    @protected
    //私有成员变量
}

- (void)execute;
@end

NS_ASSUME_NONNULL_END
