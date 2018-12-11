//
//  CanvasViewController.h
//  Objective-C_Design_Patterns
//
//  Created by zhoufei on 2018/10/2.
//  Copyright © 2018年 周飞. All rights reserved.
//
//  画板控制器


#import <UIKit/UIKit.h>
#import "CanvasView.h"

@interface CanvasViewController : UIViewController
@property (strong, nonatomic) CanvasView *canvasView;
- (void)setStrokeColor:(UIColor *)color;

//- (void)dismissModalViewControllerAnimated:(BOOL)animated;
@end
