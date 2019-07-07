//
//  DPImageFilter.h
//  Design_Patterns_Demoes
//
//  Created by 周飞 on 2019/7/6.
//  Copyright © 2019年 zhf. All rights reserved.
//

#import "DPImageComponent.h"

NS_ASSUME_NONNULL_BEGIN

@interface DPImageFilter : DPImageComponent
@property (nonatomic, strong) DPImageComponent *imageComponent;
- (void)addBehaviour;
@end

NS_ASSUME_NONNULL_END
