//
//  DPImageFilter.h
//  Design_Patterns_Demoes
//
//  Created by 周飞 on 2019/7/6.
//  Copyright © 2019年 zhf. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DPImageComponent.h"

NS_ASSUME_NONNULL_BEGIN

@interface DPImageFilter : NSObject
@property (nonatomic, strong) DPImageComponent *imageComponent;

@end

NS_ASSUME_NONNULL_END
