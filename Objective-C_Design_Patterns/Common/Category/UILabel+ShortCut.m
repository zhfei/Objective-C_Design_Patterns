//
//  UILabel+ShortCut.m
//  Objective-C_Design_Patterns
//
//  Created by zhoufei on 2018/10/11.
//  Copyright © 2018年 周飞. All rights reserved.
//

#import "UILabel+ShortCut.h"

@implementation UILabel (ShortCut)
+ (instancetype)shortCutLabelWithFrame:(CGRect)frame title:(NSString *)title {
    UILabel *label=[[UILabel alloc]init];
    label.textAlignment=NSTextAlignmentCenter;
    label.text = title;
    label.frame = frame;
    label.numberOfLines=0;
    label.font=[UIFont systemFontOfSize:12.f];
    [label setBackgroundColor:[UIColor whiteColor]];
    return label;
}
@end
