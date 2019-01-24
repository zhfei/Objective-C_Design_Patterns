//
//  ZHFSetStrokeWidthBlockCommand.m
//  Objective-C_Design_Patterns
//
//  Created by zhoufei on 2019/1/24.
//  Copyright © 2019年 周飞. All rights reserved.
//

#import "ZHFSetStrokeWidthBlockCommand.h"
#import "ZHFCoordinateViewController.h"
#import "CanvasViewController.h"

@implementation ZHFSetStrokeWidthBlockCommand
@synthesize providerBlock = providerBlock_;

- (void)execute {
    CGFloat width = 0.0;

    if (providerBlock_ != nil) {
        providerBlock_(&width);
    }
    
    CanvasViewController *ca = [[ZHFCoordinateViewController sharedZHFCoordinateViewController] canvasViewController];
    ca.strokeSize = CGSizeMake(width, width);
}
@end
