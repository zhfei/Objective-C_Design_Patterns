//
//  ZHFBrandingFactory.m
//  Objective-C_Design_Patterns
//
//  Created by zhoufei on 2018/11/25.
//  Copyright © 2018年 周飞. All rights reserved.
//

#import "ZHFBrandingFactory.h"
#import "ZHFAcmeBrandingFactory.h"
#import "ZHFSierraBrandingFactory.h"

@implementation ZHFBrandingFactory
+ (instancetype)factory {
#ifdef USE_ACME
    return [ZHFAcmeBrandingFactory new];
#elif USE_SIERRA
    return [ZHFSierraBrandingFactory new];
#else
    return nil;
#endif
}
- (UIView *)brandingView {
    return nil;
}
- (UIButton *)brandingMainButton {
    return nil;
}
- (UIToolbar *)brandingToolbar {
    return nil;
}
@end
