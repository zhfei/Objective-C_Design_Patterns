//
//  ZHFPaperCanvasViewGenerator.m
//  Objective-C_Design_Patterns
//
//  Created by 周飞 on 2018/11/18.
//  Copyright © 2018年 周飞. All rights reserved.
//

#import "ZHFPaperCanvasViewGenerator.h"
#import "ZHFPaperCanvasView.h"

@implementation ZHFPaperCanvasViewGenerator
+ (nonnull id<ZHFCanvasView>)canvasViewWithFrame:(CGRect)frame {
    id<ZHFCanvasView> can = [[ZHFPaperCanvasView alloc] initWithFrame:frame];
    return can;
}
@end
