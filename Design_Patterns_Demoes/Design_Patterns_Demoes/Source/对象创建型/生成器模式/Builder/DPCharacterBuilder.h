//
//  DPCharacterBuilder.h
//  Design_Patterns_Demoes
//
//  Created by 周飞 on 2019/4/18.
//  Copyright © 2019年 zhf. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DPCharacter.h"

NS_ASSUME_NONNULL_BEGIN

@interface DPCharacterBuilder : NSObject
@property (nonatomic, strong, readonly) DPCharacter *character;

- (DPCharacterBuilder *)buildNewCharacter;
- (DPCharacterBuilder *)buildStrength:(CGFloat)value;
- (DPCharacterBuilder *)buildStamina:(CGFloat)value;
- (DPCharacterBuilder *)buildIntelligence:(CGFloat)value;
- (DPCharacterBuilder *)buildAgility:(CGFloat)value;
- (DPCharacterBuilder *)buildAggressiveness:(CGFloat)value;
@end

NS_ASSUME_NONNULL_END
