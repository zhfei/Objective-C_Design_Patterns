//
//  CanvasViewController.m
//  Objective-C_Design_Patterns
//
//  Created by zhoufei on 2018/10/2.
//  Copyright © 2018年 周飞. All rights reserved.
//

#import "CanvasViewController.h"
#import "RecoverViewController.h"
#import "CoordinatingController.h"
#import "ThumbnailViewController.h"
#import "Stroke.h"
#import "Vertex.h"
#import "Dot.h"
#import "ZHFClothCanvasViewGenerator.h"
#import "ZHFPaperCanvasViewGenerator.h"
#import "ZHFCoordinateViewController.h"
#import "ZHFDecoratorViewController.h"
#import "ZHFCustomCommand.h"
#import "NSMutableArray+Stack.h"

#define ScreenSize [UIScreen mainScreen].bounds.size
NSInteger levesOfUndo = 20;

@interface CanvasViewController ()
{
    NSMutableArray *undoStack_;
    NSMutableArray *redoStack_;
}
@property (strong, nonatomic) Stroke *stroke;
@property (strong, nonatomic) NSMutableArray <id<Mark>> *paths;
@end

@implementation CanvasViewController
#pragma mark - Life Cycle
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//    self.undoManager = [NSUndoManager new];
    self.stroke = [Stroke new];
    self.paths = @[].mutableCopy;
    [self loadCanvasViewWithCanvasViewGenerator:[ZHFClothCanvasViewGenerator new]];
    
    [self.canvasView configMark:self.stroke];
    [self.canvasView configHistoryPaths:_paths];
    
    self.strokeSize = CGSizeMake(10, 10);
    self.strokeColor = [UIColor blackColor];
    self.scribble = [[ZHFScribble alloc] init];
}

- (void)loadCanvasViewWithCanvasViewGenerator:(ZHFCanvasViewGenerator *)generator {
    if (_canvasView) {
        [_canvasView removeFromSuperview];
    }
    ZHFCanvasView *can = [generator canvasViewWithFrame:CGRectMake(0, 0, ScreenSize.width, ScreenSize.height - 100)];
    self.canvasView = can;
    [self.view addSubview:self.canvasView];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    self.stroke.color = [UIColor colorWithHexString:[GlobalConfig sharedGlobalConfig].lineColorHex alpha:1];
    self.stroke.size = CGSizeMake([GlobalConfig sharedGlobalConfig].lineWidth, 0);
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
//    NSLog(@"touchesBegan---------:%@",NSStringFromCGPoint([touches.anyObject locationInView:_canvasView]));
//    self.stroke.color = [UIColor colorWithHexString:[GlobalConfig sharedGlobalConfig].lineColorHex alpha:1];
//    self.stroke.size = CGSizeMake([GlobalConfig sharedGlobalConfig].lineWidth, 0);
//    self.stroke.location = [touches.anyObject locationInView:_canvasView];
//    [self.stroke removeAllMarks];
    
    
//    [ZHFAlertControlle showWithTitle:@"11" message:@"11" btn1Title:@"11" btn1Handle:^(UIAlertAction * _Nullable action) {
//        NSLog(@"cool....");
//    }];
//    [ZHFProgressHUD popupMessage:@"test.."];
    
//    ZHFRequestParameter *para = [ZHFRequestParameter new];
//    para.apiString = @"ZF_initData.zip";
//    [ZHFNetworking asyncWithParameter:para success:^(NSURLSessionDataTask *task, id  _Nullable responseObject) {
//
//    } failure:^(NSURLSessionDataTask * _Nullable task, NSError *error) {
//
//    }];
//    [ZHFNetworking downloadTaskWithWithParameters:para progress:^(NSProgress *downloadProgress) {
//
//    } completionHandler:^(NSURLResponse *response, NSURL * _Nullable filePath, NSError * _Nullable error) {
//
//    }];
    
    _startPoint = [[touches anyObject] locationInView:_canvasView];
}

- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
//    NSLog(@"touchesMoved:%@",NSStringFromCGPoint([touches.anyObject locationInView:_canvasView]));
//    Vertex *ver = [Vertex new];
//    ver.location = [touches.anyObject locationInView:_canvasView];
//    [self.stroke addMark:ver];
//    [self.canvasView setNeedsDisplay];
    CGPoint lastPaint = [[touches anyObject] previousLocationInView:_canvasView];
    if (CGPointEqualToPoint(_startPoint, lastPaint)) {
        id <Mark> strok = [Stroke new];
        [strok setColor:_strokeColor];
        [strok setSize:_strokeSize];
        [strok setLocation:_startPoint];
//        [_scribble addMark:strok shouldAddToParentMark:NO];
        
        
        NSInvocation *drawInvocation = [self drawScribbleInvocation];
        [drawInvocation setArgument:&strok atIndex:2];
        
        NSInvocation *undrawInvocation = [self undrawScribbleInvocation];
        [undrawInvocation setArgument:&strok atIndex:2];
        
        //执行带有撤销命令的绘图命令
        [self executeInvocation:drawInvocation withUndoInvocation:undrawInvocation];
    }
    
    CGPoint thisPoint = [[touches anyObject] locationInView:_canvasView];
    Vertex *vt = [[Vertex alloc] initWithLocation:thisPoint];
    [_scribble addMark:vt shouldAddToParentMark:YES];
}

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
//    NSLog(@"touchesEnded********:%@",NSStringFromCGPoint([touches.anyObject locationInView:_canvasView]));
//    [self.paths addObject:[self.stroke copyWithZone:nil]];
    CGPoint lastPoint = [[touches anyObject] previousLocationInView:_canvasView];
    CGPoint thisPoint = [[touches anyObject] locationInView:_canvasView];

    if (CGPointEqualToPoint(lastPoint, thisPoint)) {
        Dot *dt = [[Dot alloc] initWithLocation:thisPoint];
        [dt setSize:_strokeSize];
        [dt setColor:_strokeColor];
//        [_scribble addMark:dt shouldAddToParentMark:NO];
        
        NSInvocation *drawInvocation = [self drawScribbleInvocation];
        [drawInvocation setArgument:&dt atIndex:2];
        
        NSInvocation *undrawInvocation = [self undrawScribbleInvocation];
        [undrawInvocation setArgument:&dt atIndex:2];
        
        //执行带有撤销命令的绘图命令
        [self executeInvocation:drawInvocation withUndoInvocation:undrawInvocation];

    }
    _startPoint = CGPointZero;
}

- (void)touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    _startPoint = CGPointZero;
}

#pragma mark - Getter, Setter

- (void)setScribble:(ZHFScribble *)scribble {
    if (_scribble != scribble) {
        _scribble = scribble;
        //NSKeyValueObservingOptionInitial 添加观察者时，就触发一次
        [_scribble addObserver:self forKeyPath:@"mark" options:NSKeyValueObservingOptionNew|NSKeyValueObservingOptionInitial context:nil];
    }
}

#pragma mark - Event
- (IBAction)tapAction:(UIButton *)sender {
    switch (sender.tag) {
        case 0:
            //删除
            [self.stroke removeAllMarks];
            [self.paths removeAllObjects];
            [self.canvasView configImage:nil];
            [self.canvasView setNeedsDisplay];
            break;
        case 1:
            //保存
            UIImageWriteToSavedPhotosAlbum([UIImage screenshotInView:self.canvasView], self, @selector(image:didFinishSavingWithError:contextInfo:), NULL);
            
            self.stroke.color = [UIColor colorWithHexString:[GlobalConfig sharedGlobalConfig].lineColorHex alpha:1];
            self.stroke.size = CGSizeMake([GlobalConfig sharedGlobalConfig].lineWidth, 0);
            self.stroke.location = CGPointZero;
            [self.stroke removeAllMarks];
            
            [self.canvasView configImage:nil];
            [self.paths removeAllObjects];
            [self.canvasView setNeedsDisplay];
            
            break;
        case 4:
            //撤销
//            [self.paths removeLastObject];
//            [self.stroke removeAllMarks];
//            [self.canvasView setNeedsDisplay];

            [self.undoManager undo];
            break;
        case 5:
            //恢复
        {
//            UIViewController *vc = [[CoordinatingController sharedCoordinatingController] storyBoardVC:@"RecoverViewController"];
//            [(RecoverViewController *)vc setImg:[UIImage screenshotInView:self.canvasView]];
            
            ZHFDecoratorViewController *decVC = [[ZHFDecoratorViewController alloc] init];
            
            [[CoordinatingController sharedCoordinatingController] presentVC:decVC];
        }
            break;
            
        default:
            break;
    }
}



//其他界面返回到此界面调用的方法
- (IBAction)ViewController1UnwindSegue:(UIStoryboardSegue *)unwindSegue {
    if ([@"fromPalette" isEqualToString:unwindSegue.identifier]) {
        NSLog(@"fromPalette.....");
    } else if ([@"fromThumbnail" isEqualToString:unwindSegue.identifier]) {
        NSLog(@"fromThumbnail.....");
    }
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context {
    
    if ([object isKindOfClass:[ZHFScribble class]]&&[keyPath isEqualToString:@"mark"]) {
        id <Mark> mark = [change objectForKey:NSKeyValueChangeNewKey];
        [_canvasView configMark:mark];
        [_canvasView setNeedsDisplay];
    }
}

#pragma mark - Public Method
- (void)setStrokeColor:(UIColor *)color {
    self.stroke.color = color;
}

#pragma mark - Private Method
- (void)image: (UIImage *) image didFinishSavingWithError: (NSError *)error contextInfo: (void *) contextInfo {
    NSString *msg = nil;
    if(error != NULL){
        msg = @"保存图片失败" ;
    }else{
        msg = @"保存图片成功" ;
    }
    NSLog(@"%@",msg);
}


//生成绘图和撤销绘图的操作
- (NSInvocation *)drawScribbleInvocation {
    NSMethodSignature *exeMethodSignature = [_scribble methodSignatureForSelector:@selector(addMark:shouldAddToParentMark:)];
    
    NSInvocation *drawInvocation = [NSInvocation invocationWithMethodSignature:exeMethodSignature];
    [drawInvocation setTarget:_scribble];
    [drawInvocation setSelector:@selector(addMark:shouldAddToParentMark:)];
    BOOL addToParentMark = NO;
    [drawInvocation setArgument:&addToParentMark atIndex:3];
    return drawInvocation;
}

- (NSInvocation *)undrawScribbleInvocation {
    NSMethodSignature *unexeMethodSignature = [_scribble methodSignatureForSelector:@selector(removeMark:)];
    
    NSInvocation *undrawInvocation = [NSInvocation invocationWithMethodSignature:unexeMethodSignature];
    [undrawInvocation setTarget:_scribble];
    [undrawInvocation setSelector:@selector(removeMark:)];

    return undrawInvocation;
}

// Draw Scribble Command Methods
- (void)executeInvocation:(NSInvocation *)invocation withUndoInvocation:(NSInvocation *)undoInvocation {
    [invocation retainArguments];
    [[self.undoManager prepareWithInvocationTarget:self]
     unexecuteInvocation:undoInvocation withRedoInvocation:invocation];
    [invocation invoke];
}

- (void)unexecuteInvocation:(NSInvocation *)invocation withRedoInvocation:(NSInvocation *)redoInvocation {
    [[self.undoManager prepareWithInvocationTarget:self]
     executeInvocation:redoInvocation withUndoInvocation:invocation];
    [invocation invoke];
}

// Draw Scribble CustomCommand Methods
- (void)executeCommand:(ZHFCustomCommand *)command prepareForUndo:(BOOL)prepareForUndo {
    if (prepareForUndo) {
        //懒加载undoStack_
        if (undoStack_ == nil) {
            undoStack_ = @[].mutableCopy;
        }
        //如果栈满了，就丢弃最后一个
        if ([undoStack_ count] ==  levesOfUndo) {
            [undoStack_ dropBottom];
        }
        //把命令压入栈
        [undoStack_ push:command];
    }
    
    [command execute];
}

- (void)undoCommand {
    ZHFCustomCommand *command = [undoStack_ pop];
    [command undo];
    
    if (redoStack_ == nil) {
        redoStack_ = @[].mutableCopy;
    }
    [redoStack_ push:command];
}

- (void)redoCommand {
    ZHFCustomCommand *command = [redoStack_ pop];
    [command execute];
    
    [undoStack_ push:command];
}



#pragma mark - Delegate

#pragma mark - NSCopying

#pragma mark - NSObject


@end
