//
//  DPVisitor.h
//  Design_Patterns_Demoes
//
//  Created by 周飞 on 2019/7/10.
//  Copyright © 2019年 zhf. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DPElement.h"

NS_ASSUME_NONNULL_BEGIN

@interface DPVisitor : NSObject
- (void)visitorConcreteA:(DPElement *)element;
@end

NS_ASSUME_NONNULL_END
