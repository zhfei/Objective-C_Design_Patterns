//
//  DPClassAdapter.h
//  Design_Patterns_Demoes
//
//  Created by zhoufei on 2019/6/13.
//  Copyright © 2019年 zhf. All rights reserved.
//

#import "DPClassAdaptee.h"
#import "DPAdapteProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface DPClassAdapter : DPClassAdaptee <DPAdapteProtocol>

@end

NS_ASSUME_NONNULL_END
