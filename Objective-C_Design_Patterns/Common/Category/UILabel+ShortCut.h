//
//  UILabel+ShortCut.h
//  Objective-C_Design_Patterns
//
//  Created by zhoufei on 2018/10/11.
//  Copyright © 2018年 周飞. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (ShortCut)
+ (instancetype)shortCutLabelWithFrame:(CGRect)frame title:(NSString *)title;
@end
