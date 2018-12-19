//
//  ZHFDecoratorView.m
//  Objective-C_Design_Patterns
//
//  Created by zhoufei on 2018/12/19.
//  Copyright © 2018年 周飞. All rights reserved.
//

#import "ZHFDecoratorView.h"

@implementation ZHFDecoratorView
- (void)setImage:(UIImage *)image {
    _image = image;
    [self setNeedsDisplay];
}

- (void)drawRect:(CGRect)rect {
    [_image drawInRect:CGRectMake(100, 200, _image.size.width, _image.size.height)];
}

@end
