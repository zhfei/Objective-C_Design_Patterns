//
//  ZHFScribbleThumbnailViewImageProxy.m
//  Objective-C_Design_Patterns
//
//  Created by 周飞 on 2019/1/6.
//  Copyright © 2019年 周飞. All rights reserved.
//

#import "ZHFScribbleThumbnailViewImageProxy.h"

@implementation ZHFScribbleThumbnailViewImageProxy
- (UIImage *)image {
    if (realImage_ == nil) {
        realImage_ = [UIImage imageWithContentsOfFile:self.imagePath];
    }
    return realImage_;
}

- (void)drawRect:(CGRect)rect {
    if (self.image == nil) {
        //绘制占位视图
        CGContextRef context = UIGraphicsGetCurrentContext();
        
        CGContextSetLineWidth(context, 10.0);
        const CGFloat dashLengths[2] = {10,3};
        CGContextSetLineDash(context, 3, dashLengths, 2);
        CGContextSetStrokeColorWithColor(context, [[UIColor darkGrayColor] CGColor]);
        CGContextSetFillColorWithColor(context, [[UIColor lightGrayColor] CGColor]);
        CGContextAddRect(context, rect);
        CGContextDrawPath(context, kCGPathFillStroke);
        
        if (!loadingThreadHasLaunched_) {
            [self performSelectorInBackground:@selector(forwardImageLoadingThread) withObject:nil];
            loadingThreadHasLaunched_ = YES;
        }
        
        //启动另一个线程，调用[self image]以加载实际图像
    } else {
        [self.image drawInRect:rect];
    }
}

#pragma mark - private method
- (void)forwardImageLoadingThread {
    @autoreleasepool {
        [self image];
        [self performSelectorOnMainThread:@selector(setNeedsDisplay) withObject:nil waitUntilDone:NO];
    }
}

@end
