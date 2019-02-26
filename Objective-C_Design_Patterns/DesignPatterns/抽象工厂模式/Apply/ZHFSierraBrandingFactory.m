//
//  ZHFSierraBrandingFactory.m
//  Objective-C_Design_Patterns
//
//  Created by zhoufei on 2018/11/26.
//  Copyright © 2018年 周飞. All rights reserved.
//

#import "ZHFSierraBrandingFactory.h"
#import "ZHFSierraBrandingViews.h"

@implementation ZHFSierraBrandingFactory
- (UIView *)brandingView {
    return [ZHFSierraBrandingView new];
}

- (UIButton *)brandingMainButton {
    return [ZHFSierraBrandingMainButton new];
}

- (UIToolbar *)brandingToolbar {
    return [ZHFSierraBrandingToolbar new];
}
@end
