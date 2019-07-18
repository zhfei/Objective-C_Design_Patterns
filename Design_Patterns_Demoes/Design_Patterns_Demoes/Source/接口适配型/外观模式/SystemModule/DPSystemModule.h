//
//  DPSystemModule.h
//  Design_Patterns_Demoes
//
//  Created by 周飞 on 2019/7/14.
//  Copyright © 2019年 zhf. All rights reserved.
//
//  子系统

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DPSystemModule : NSObject
//切菜
- (void)cuttingGreens;
//炒菜
- (void)fryGreens;
//放调料
- (void)placeSeasoning;
//装盘
- (void)installDish;
@end

NS_ASSUME_NONNULL_END
