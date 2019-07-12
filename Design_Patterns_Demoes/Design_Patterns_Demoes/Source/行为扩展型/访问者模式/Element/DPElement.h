//
//  DPElement.h
//  Design_Patterns_Demoes
//
//  Created by 周飞 on 2019/7/10.
//  Copyright © 2019年 zhf. All rights reserved.
//

#import <Foundation/Foundation.h>
@class DPVisitor;

NS_ASSUME_NONNULL_BEGIN

@interface DPElement : NSObject
- (void)acceptElement:(DPVisitor *)visitor;
@end

NS_ASSUME_NONNULL_END
