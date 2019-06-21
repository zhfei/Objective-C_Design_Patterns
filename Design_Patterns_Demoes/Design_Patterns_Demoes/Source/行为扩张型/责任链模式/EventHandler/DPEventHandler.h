//
//  DPEventHandler.h
//  Design_Patterns_Demoes
//
//  Created by 周飞 on 2019/6/21.
//  Copyright © 2019年 zhf. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DPEvent.h"

NS_ASSUME_NONNULL_BEGIN

@interface DPEventHandler : NSObject
- (void)handlerEvent:(DPEvent *)event;

@end

NS_ASSUME_NONNULL_END
