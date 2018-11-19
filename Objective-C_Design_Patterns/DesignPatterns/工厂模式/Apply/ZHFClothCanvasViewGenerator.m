//
//  ZHFClothCanvasViewGenerator.m
//  Objective-C_Design_Patterns
//
//  Created by 周飞 on 2018/11/18.
//  Copyright © 2018年 周飞. All rights reserved.
//

#import "ZHFClothCanvasViewGenerator.h"

@implementation ZHFClothCanvasViewGenerator
- (ZHFCanvasView *)canvasViewWithFrame:(CGRect)frame {
    ZHFCanvasView *can = [[ZHFClothCanvasView alloc] initWithFrame:frame];
    return can;
}

@end
