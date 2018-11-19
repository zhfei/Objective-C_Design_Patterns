//
//  ZHFCanvasViewGenerator.m
//  Objective-C_Design_Patterns
//
//  Created by 周飞 on 2018/11/19.
//  Copyright © 2018年 周飞. All rights reserved.
//

#import "ZHFCanvasViewGenerator.h"

@implementation ZHFCanvasViewGenerator
- (ZHFCanvasView *)canvasViewWithFrame:(CGRect)frame {
    ZHFCanvasView *can = [[ZHFCanvasView alloc] initWithFrame:frame];
    return can;
}

@end
