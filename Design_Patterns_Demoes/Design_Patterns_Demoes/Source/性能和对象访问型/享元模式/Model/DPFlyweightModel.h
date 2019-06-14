//
//  DPFlyweightModel.h
//  Design_Patterns_Demoes
//
//  Created by zhoufei on 2019/6/14.
//  Copyright © 2019年 zhf. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface DPFlyweightModel : NSObject
//享元属性
@property (nonatomic, strong) UIImageView *flower;
//个有特征属性
@property (nonatomic, assign) CGRect area;
@end

NS_ASSUME_NONNULL_END
