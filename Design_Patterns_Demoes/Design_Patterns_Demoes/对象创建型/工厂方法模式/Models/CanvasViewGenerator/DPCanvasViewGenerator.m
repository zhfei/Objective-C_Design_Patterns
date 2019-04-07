//
//  DPCanvasViewGenerator.m
//  Design_Patterns_Demoes
//
//  Created by 周飞 on 2019/4/7.
//  Copyright © 2019年 zhf. All rights reserved.
//

#import "DPCanvasViewGenerator.h"

@implementation DPCanvasViewGenerator
- (DPCanvasView *)canvasViewWithFrame:(CGRect)frame {
    DPCanvasView *cv = [[DPCanvasView alloc] initWithFrame:frame];
    return cv;
}

@end
