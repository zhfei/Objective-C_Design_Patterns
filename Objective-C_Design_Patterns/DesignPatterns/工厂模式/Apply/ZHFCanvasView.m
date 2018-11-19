//
//  ZHFCanvasView.m
//  Objective-C_Design_Patterns
//
//  Created by 周飞 on 2018/11/19.
//  Copyright © 2018年 周飞. All rights reserved.
//

#import "ZHFCanvasView.h"

@interface ZHFCanvasView()
@property (nonatomic, strong) id<Mark> mark;
@property (nonatomic, strong) NSMutableArray <id<Mark>> *historyPaths;
@property (nonatomic, strong) UIImage *tempImage;
@end

@implementation ZHFCanvasView
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor whiteColor];
    }
    return self;
}

- (void)configMark:(id<Mark>)mark {
    _mark = mark;
}

- (void)configHistoryPaths:(NSMutableArray<id<Mark>> *)historyPaths {
    _historyPaths = historyPaths;
}

- (void)configImage:(UIImage *)image {
    _tempImage = image;
    [self setNeedsDisplay];
    //    self.layer.contents = (__bridge id _Nullable)(image.CGImage);
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    if (_tempImage) {
        [_tempImage drawInRect: rect];//CGRectMake(0, 0, _tempImage.size.width, _tempImage.size.height)];
    }
    
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
