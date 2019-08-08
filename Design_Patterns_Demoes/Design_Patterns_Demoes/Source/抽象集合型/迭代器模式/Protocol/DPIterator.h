//
//  DPIterator.h
//  Design_Patterns_Demoes
//
//  Created by zhoufei on 2019/8/8.
//  Copyright © 2019年 zhf. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol DPIterator <NSObject>
- (id)first;
- (id)next;
- (id)currentItem;
@end

NS_ASSUME_NONNULL_END
