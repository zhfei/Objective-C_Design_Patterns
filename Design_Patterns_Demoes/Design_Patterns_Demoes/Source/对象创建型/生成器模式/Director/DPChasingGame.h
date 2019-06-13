//
//  DPChasingGame.h
//  Design_Patterns_Demoes
//
//  Created by 周飞 on 2019/4/18.
//  Copyright © 2019年 zhf. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DPCharacterBuilder.h"
#import "DPCharacter.h"

NS_ASSUME_NONNULL_BEGIN

@interface DPChasingGame : NSObject
- (DPCharacter *)createPlayer:(DPCharacterBuilder *)builder;
- (DPCharacter *)createEnemy:(DPCharacterBuilder *)builder;
@end

NS_ASSUME_NONNULL_END
