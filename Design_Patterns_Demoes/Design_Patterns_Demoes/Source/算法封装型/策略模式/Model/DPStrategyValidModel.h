//
//  DPStrategyValidModel.h
//  Design_Patterns_Demoes
//
//  Created by 周飞 on 2019/7/2.
//  Copyright © 2019年 zhf. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DPStrategyValidModel : NSObject
- (BOOL)validText:(NSString *)text error:(NSError **)error;

@end

NS_ASSUME_NONNULL_END
