//
//  ZHFScribbleMemento+Friend.h
//  Objective-C_Design_Patterns
//
//  Created by zhoufei on 2019/1/7.
//  Copyright © 2019年 周飞. All rights reserved.
//

#import "ZHFScribbleMemento.h"

NS_ASSUME_NONNULL_BEGIN

@interface ZHFScribbleMemento (Friend)

- (instancetype)initWithMark:(id<Mark>)aMark;
@end

NS_ASSUME_NONNULL_END
