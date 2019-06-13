//
//  DPPaperCanvasViewGenerator.m
//  Design_Patterns_Demoes
//
//  Created by 周飞 on 2019/4/7.
//  Copyright © 2019年 zhf. All rights reserved.
//

#import "DPPaperCanvasViewGenerator.h"
#import "DPPaperCanvasView.h"

@implementation DPPaperCanvasViewGenerator
- (DPCanvasView *)canvasViewWithFrame:(CGRect)frame {
    DPPaperCanvasView *paper = [[DPPaperCanvasView alloc] initWithFrame:frame];
    return paper;
}
@end
