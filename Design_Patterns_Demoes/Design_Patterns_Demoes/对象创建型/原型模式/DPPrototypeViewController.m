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
#import "DPScribble.h"
#import "DPCanvasView.h"


@interface DPPrototypeViewController ()
@property (nonatomic, strong) DPScribble *scribble;
@property (nonatomic, assign) CGSize strokeSize;
@property (nonatomic, strong) UIColor *strokeColor;
@property (nonatomic, assign) CGPoint startPoint;
//画板View
@property (nonatomic, strong) DPCanvasView *targetView;
@end

@implementation DPPrototypeViewController
#pragma mark - Life Cycle
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self addUI];
    [self setupUI];
    [self setupLayout];
    [self setupData];
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
        
        [_scribble addMark:strok shouldAddToPreviousMark:NO];
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
        
        [_scribble addMark:dt shouldAddToPreviousMark:NO];
    }
    _startPoint = CGPointZero;
}

- (void)touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    _startPoint = CGPointZero;
}

#pragma mark - Getter, Setter
- (DPCanvasView *)targetView {
    if (!_targetView) {
        DPCanvasView *targetView = [[DPCanvasView alloc] initWithFrame:CGRectInset(self.view.frame, 40, 100)];
        targetView.backgroundColor = [UIColor lightGrayColor];
        _targetView = targetView;
    }
    return _targetView;
}

#pragma mark - Event
- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context {
    
    if ([object isKindOfClass:[DPScribble class]]&&[keyPath isEqualToString:@"mark"]) {
        id <Mark> mark = [change objectForKey:NSKeyValueChangeNewKey];
        //将痕迹渲染到画板上
        NSLog(@"--mark--: %@",mark);
        [self.targetView setMark:mark];
    }
}

#pragma mark - Public Method

#pragma mark - Private Method
- (void)addUI {
    
}

- (void)setupUI {
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self.view addSubview:self.targetView];
    self.title = @"手指滑两下看看";
}

- (void)setupLayout {
    
}

- (void)setupData {
    self.strokeColor = [UIColor blackColor];
    self.strokeSize = CGSizeMake(5, 5);
    
    self.scribble = [DPScribble new];
    [self.scribble addObserver:self forKeyPath:@"mark" options:NSKeyValueObservingOptionNew|NSKeyValueObservingOptionOld context:nil];
}
#pragma mark - Delegate

#pragma mark - NSCopying

#pragma mark - NSObject

@end
