//
//  UIButton+ZHFShortCut.h
//  Objective-C_Design_Patterns
//
//  Created by zhoufei on 2018/10/11.
//  Copyright © 2018年 周飞. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^TapBlock)(UIButton *btn);

@interface UIButton (ZHFShortCut)
+ (instancetype)shortCutButtonWithFrame:(CGRect)frame title:(NSString *)title TapAction:(TapBlock)tapBlock;
/**
 上下垂直居中
 */
- (void)verticalImageAndTitle;
@end
