//
//  DPCanvasView.m
//  Design_Patterns_Demoes
//
//  Created by 周飞 on 2019/4/5.
//  Copyright © 2019年 zhf. All rights reserved.
//

#import "DPCanvasView.h"

@implementation DPCanvasView

- (void)setMark:(id<Mark>)mark {
    _mark = mark;
    [self setNeedsDisplay];
}

- (void)drawRect:(CGRect)rect {
    CGContextRef context = UIGraphicsGetCurrentContext();
    [self.mark drawWithContext:context];
}

@end
