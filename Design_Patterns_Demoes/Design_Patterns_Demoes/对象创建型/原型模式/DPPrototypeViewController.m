//
//  DPPrototypeViewController.m
//  Design_Patterns_Demoes
//
//  Created by 周飞 on 2019/3/29.
//  Copyright © 2019年 zhf. All rights reserved.
//

#import "DPPrototypeViewController.h"
#import "Stroke.h"
#import "Vertex.h"
#import "Dot.h"
#import "Scribble.h"

@interface DPPrototypeViewController ()
@property (nonatomic, strong) Scribble *scribble;
@property (nonatomic, assign) CGSize strokeSize;
@property (nonatomic, strong) UIColor *strokeColor;
@property (nonatomic, assign) CGPoint startPoint;
//画板View
@property (nonatomic, strong) UIView *targetView;
@end

@implementation DPPrototypeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.targetView = self.view;
    self.scribble = [Scribble new];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    _startPoint = [[touches anyObject] locationInView:_targetView];
}

- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    CGPoint lastPaint = [[touches anyObject] previousLocationInView:_targetView];
    if (CGPointEqualToPoint(_startPoint, lastPaint)) {
        id <Mark> strok = [Stroke new];
        [strok setColor:self.strokeColor];
        [strok setSize:self.strokeSize];
        [strok setLocation:_startPoint];
    }
    
    CGPoint thisPoint = [[touches anyObject] locationInView:_targetView];
    Vertex *vt = [[Vertex alloc] initWithLocation:thisPoint];
    [_scribble addMark:vt shouldAddToPreviousMark:YES];
}

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    CGPoint lastPoint = [[touches anyObject] previousLocationInView:_targetView];
    CGPoint thisPoint = [[touches anyObject] locationInView:_targetView];
    
    if (CGPointEqualToPoint(lastPoint, thisPoint)) {
        Dot *dt = [[Dot alloc] initWithLocation:thisPoint];
        [dt setSize:self.strokeSize];
        [dt setColor:self.strokeColor];
    }
    _startPoint = CGPointZero;
    
    
}

- (void)touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    _startPoint = CGPointZero;
}

@end
