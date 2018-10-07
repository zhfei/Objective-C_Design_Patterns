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
@property (nonatomic, strong) NSMutableArray <id<Mark>> *historyPaths;

@end

@implementation CanvasView
- (void)configMark:(id<Mark>)mark {
    _mark = mark;
}

- (void)configHistoryPaths:(NSMutableArray<id<Mark>> *)historyPaths {
    _historyPaths = historyPaths;
}

- (void)configImage:(UIImage *)image {
    self.layer.contents = (__bridge id _Nullable)(image.CGImage);
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    CGContextRef context = UIGraphicsGetCurrentContext();
    for (id mark in self.historyPaths) {
        [mark drawWithContext:context];
    }
    
    [_mark drawWithContext:context];
    
//    CGContextSetLineWidth(context, [GlobalConfig sharedGlobalConfig].lineWidth);
//    CGContextSetStrokeColorWithColor(context, [UIColor colorWithHexString:[GlobalConfig sharedGlobalConfig].lineColorHex alpha:1].CGColor);
//    CGContextStrokePath(context)
}


@end
