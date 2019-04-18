//
//  DPCharacter.h
//  Design_Patterns_Demoes
//
//  Created by 周飞 on 2019/4/18.
//  Copyright © 2019年 zhf. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreGraphics/CoreGraphics.h>

NS_ASSUME_NONNULL_BEGIN

@interface DPCharacter : NSObject
@property (nonatomic, assign) CGFloat protection;//防御
@property (nonatomic, assign) CGFloat power;//攻击
@property (nonatomic, assign) CGFloat strength;//力量
@property (nonatomic, assign) CGFloat stamina;//耐力
@property (nonatomic, assign) CGFloat intelligence;//智力
@property (nonatomic, assign) CGFloat agility;//敏捷
@property (nonatomic, assign) CGFloat aggressiveness;//攻击力
@end

NS_ASSUME_NONNULL_END
