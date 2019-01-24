//
//  ZHFSetStrokeColorCommand.m
//  Objective-C_Design_Patterns
//
//  Created by zhoufei on 2018/12/4.
//  Copyright © 2018年 周飞. All rights reserved.
//

#import "ZHFSetStrokeColorCommand.h"
#import "ZHFCoordinateViewController.h"
#import "CanvasViewController.h"

@implementation ZHFSetStrokeColorCommand
@synthesize delegte = delegte_;

- (void)execute {
    CGFloat red = 0.0;
    CGFloat green = 0.0;
    CGFloat blue = 0.0;
    
    if ([delegte_ respondsToSelector:@selector(command:didRequestColorCompenentsForRed:green:blue:)]) {
        [delegte_ command:self didRequestColorCompenentsForRed:&red green:&green blue:&blue];
    }
    
    UIColor *color = [UIColor colorWithRed:red green:green blue:blue alpha:1];
    
    if ([delegte_ respondsToSelector:@selector(command:didFinishedColorUpdateWithColor:)]) {
        [delegte_ command:self didFinishedColorUpdateWithColor:color];
    }
    
    CanvasViewController *ca = [[ZHFCoordinateViewController sharedZHFCoordinateViewController] canvasViewController];
    [ca setStrokeColor:color];
}
@end
