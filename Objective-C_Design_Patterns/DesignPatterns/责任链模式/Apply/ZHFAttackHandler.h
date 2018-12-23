//
//  ZHFAttackHandler.h
//  Objective-C_Design_Patterns
//
//  Created by 周飞 on 2018/12/23.
//  Copyright © 2018年 周飞. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ZHFAttack.h"

NS_ASSUME_NONNULL_BEGIN

@interface ZHFAttackHandler : NSObject
{
@private
    ZHFAttackHandler *nextAttackHandler_;
}
@property (nonatomic, retain) ZHFAttackHandler *nextAttackHandler;

- (void)handleAttack:(ZHFAttack *)attack;
@end

NS_ASSUME_NONNULL_END
