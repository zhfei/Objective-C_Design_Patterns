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
#import "ZHFScribble.h"

@interface CanvasViewController : UIViewController
@property (nonatomic, strong) CanvasView *canvasView;
@property (nonatomic, strong) ZHFScribble *scribble;
@property (nonatomic, assign) CGPoint startPoint;
@property (nonatomic, assign) CGSize strokeSize;
@property (nonatomic, strong) UIColor *strokeColor;
- (void)setStrokeColor:(UIColor *)color;

//- (void)dismissModalViewControllerAnimated:(BOOL)animated;
@end
