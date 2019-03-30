//
//  DPSubTitleTableVCFactory.h
//  Design_Patterns_Demoes
//
//  Created by 周飞 on 2019/3/30.
//  Copyright © 2019年 zhf. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DPSubTitleTableVC.h"

//单个类型枚举
typedef NS_ENUM(NSInteger,DPSubTitleTableType) {
    DPSubTitleTableCreateType = 0,
    DPSubTitleTableNone
};


NS_ASSUME_NONNULL_BEGIN

@interface DPSubTitleTableVCFactory : NSObject
+ (DPSubTitleTableVC *)subTitleTableVC:(DPSubTitleTableType)type;


@end

NS_ASSUME_NONNULL_END
