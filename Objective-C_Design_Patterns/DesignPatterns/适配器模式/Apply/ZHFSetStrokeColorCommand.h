//
//  ZHFSetStrokeColorCommand.h
//  Objective-C_Design_Patterns
//
//  Created by zhoufei on 2018/12/4.
//  Copyright © 2018年 周飞. All rights reserved.
//

#import "ZHFCommand.h"
#import "ZHFSetStrokeColorCommandDelegate.h"

NS_ASSUME_NONNULL_BEGIN

@interface ZHFSetStrokeColorCommand : ZHFCommand
{
    @private
    __weak id <ZHFSetStrokeColorCommandDelegate> delegte_;
}
@property (nonatomic, weak)id<ZHFSetStrokeColorCommandDelegate> delegte;

@end

NS_ASSUME_NONNULL_END
