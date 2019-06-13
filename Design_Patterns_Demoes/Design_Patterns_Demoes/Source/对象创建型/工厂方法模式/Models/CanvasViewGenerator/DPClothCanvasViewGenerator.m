//
//  DPClothCanvasViewGenerator.m
//  Design_Patterns_Demoes
//
//  Created by 周飞 on 2019/4/7.
//  Copyright © 2019年 zhf. All rights reserved.
//

#import "DPClothCanvasViewGenerator.h"
#import "DPClothCanvasView.h"

@implementation DPClothCanvasViewGenerator
- (DPCanvasView *)canvasViewWithFrame:(CGRect)frame {
    DPClothCanvasView *cloth = [[DPClothCanvasView alloc] initWithFrame:frame];
    return cloth;
}
@end
