//
//  ZHFFlowerFactory.h
//  Objective-C_Design_Patterns
//
//  Created by 周飞 on 2019/1/4.
//  Copyright © 2019年 周飞. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Macro.h>
typedef enum : NSUInteger {
    ZHFFlowerViewTypeAnemone,
    ZHFFlowerViewTypeCosmos,
    ZHFFlowerViewTypeGerberas,
    ZHFFlowerViewTypeHellyhock,
    ZHFFlowerViewTypeJasmine,
    ZHFFlowerViewTypeZinnia,
    ZHFFlowerViewTypeTotalNums,
} ZHFFlowerViewType;

NS_ASSUME_NONNULL_BEGIN

@interface ZHFFlowerFactory : NSObject
{
    @private
    NSMutableDictionary *pool_;
}
SingletonH(ZHFFlowerFactory)
- (UIView *)flowerViewWithType:(ZHFFlowerViewType)type;
@end

NS_ASSUME_NONNULL_END
