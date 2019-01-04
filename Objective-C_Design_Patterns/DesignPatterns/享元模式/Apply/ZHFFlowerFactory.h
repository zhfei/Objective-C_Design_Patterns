//
//  ZHFFlowerFactory.h
//  Objective-C_Design_Patterns
//
//  Created by 周飞 on 2019/1/4.
//  Copyright © 2019年 周飞. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger,ZHFFlowerViewType) {
    ZHFFlowerViewTypeAnemone = 0,
};

NS_ASSUME_NONNULL_BEGIN

@interface ZHFFlowerFactory : NSObject
+ (UIView *)flowerViewWithType:(ZHFFlowerViewType)type;
@end

NS_ASSUME_NONNULL_END
