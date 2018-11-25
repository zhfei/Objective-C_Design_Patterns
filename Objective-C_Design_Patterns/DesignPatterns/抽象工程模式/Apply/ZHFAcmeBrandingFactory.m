//
//  ZHFAcmeBrandingFactory.m
//  Objective-C_Design_Patterns
//
//  Created by zhoufei on 2018/11/26.
//  Copyright © 2018年 周飞. All rights reserved.
//

#import "ZHFAcmeBrandingFactory.h"
#import "ZHFAcmeBrandingViews.h"

@implementation ZHFAcmeBrandingFactory
- (UIView *)brandingView {
    return [ZHFAcmeBrandingView new];
}

- (UIButton *)brandingMainButton {
    return [ZHFAcmeBrandingMainButton new];
}

- (UIToolbar *)brandingToolbar {
    return [ZHFAcmeBrandingToolbar new];
}
@end
