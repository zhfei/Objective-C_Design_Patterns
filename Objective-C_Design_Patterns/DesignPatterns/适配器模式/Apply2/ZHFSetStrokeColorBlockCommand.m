//
//  ZHFSetStrokeColorBlockCommand.m
//  Objective-C_Design_Patterns
//
//  Created by zhoufei on 2018/12/5.
//  Copyright © 2018年 周飞. All rights reserved.
//

#import "ZHFSetStrokeColorBlockCommand.h"
#import "CoordinatingController.h"
#import "CanvasViewController.h"

@implementation ZHFSetStrokeColorBlockCommand
@synthesize providerBlock = providerBlock_;

- (void)execute {
    CGFloat red = 0.0;
    CGFloat green = 0.0;
    CGFloat blue = 0.0;
    
    if (providerBlock_ != nil) {
        providerBlock_(&red,&green,&blue);
    }
    
    UIColor *color = [UIColor colorWithRed:red green:green blue:blue alpha:1];
    CanvasViewController *ca = [CoordinatingController sharedCoordinatingController];
    [ca setStrokeColor:color];
}
@end
