//
//  CanvasView.m
//  Objective-C_Design_Patterns
//
//  Created by zhoufei on 2018/10/4.
//  Copyright © 2018年 周飞. All rights reserved.
//

#import "CanvasView.h"

@interface CanvasView()
@property (nonatomic, strong) id<Mark> mark;
@end

@implementation CanvasView
- (void)configMark:(id<Mark>)mark {
    _mark = mark;
    [self setNeedsDisplay];
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    CGContextRef context = UIGraphicsGetCurrentContext();
    [_mark drawWithContext:context];
}


@end
