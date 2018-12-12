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
#import "ZHFClothCanvasViewGenerator.h"
#import "ZHFPaperCanvasViewGenerator.h"
#import "ZHFCoordinateViewController.h"

#define ScreenSize [UIScreen mainScreen].bounds.size

@interface CanvasViewController ()

@property (strong, nonatomic) Stroke *stroke;
@property (strong, nonatomic) NSMutableArray <id<Mark>> *paths;
@end

@implementation CanvasViewController
#pragma mark - Life Cycle
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.stroke = [Stroke new];
    self.paths = @[].mutableCopy;
    [self loadCanvasViewWithCanvasViewGenerator:[ZHFClothCanvasViewGenerator new]];
    
    [self.canvasView configMark:self.stroke];
    [self.canvasView configHistoryPaths:_paths];
    
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
    NSLog(@"touchesBegan---------:%@",NSStringFromCGPoint([touches.anyObject locationInView:_canvasView]));
    self.stroke.color = [UIColor colorWithHexString:[GlobalConfig sharedGlobalConfig].lineColorHex alpha:1];
    self.stroke.size = CGSizeMake([GlobalConfig sharedGlobalConfig].lineWidth, 0);
    self.stroke.location = [touches.anyObject locationInView:_canvasView];
    [self.stroke removeAllMarks];
    
    
//    [ZHFAlertControlle showWithTitle:@"11" message:@"11" btn1Title:@"11" btn1Handle:^(UIAlertAction * _Nullable action) {
//        NSLog(@"cool....");
//    }];
//    [ZHFProgressHUD popupMessage:@"test.."];
    
    ZHFRequestParameter *para = [ZHFRequestParameter new];
    para.apiString = @"ZF_initData.zip";
//    [ZHFNetworking asyncWithParameter:para success:^(NSURLSessionDataTask *task, id  _Nullable responseObject) {
//
//    } failure:^(NSURLSessionDataTask * _Nullable task, NSError *error) {
//
//    }];
    [ZHFNetworking downloadTaskWithWithParameters:para progress:^(NSProgress *downloadProgress) {
        
    } completionHandler:^(NSURLResponse *response, NSURL * _Nullable filePath, NSError * _Nullable error) {
        
    }];
}

- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"touchesMoved:%@",NSStringFromCGPoint([touches.anyObject locationInView:_canvasView]));
    Vertex *ver = [Vertex new];
    ver.location = [touches.anyObject locationInView:_canvasView];
    [self.stroke addMark:ver];
    [self.canvasView setNeedsDisplay];
}

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"touchesEnded********:%@",NSStringFromCGPoint([touches.anyObject locationInView:_canvasView]));
    [self.paths addObject:[self.stroke copyWithZone:nil]];
    
}

#pragma mark - Getter, Setter

- (void)setScribble:(ZHFScribble *)scribble {
    if (_scribble != scribble) {
        _scribble = scribble;
        [_scribble addObserver:self forKeyPath:@"mark" options:NSKeyValueObservingOptionNew context:nil];
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
            [self.paths removeLastObject];
            [self.stroke removeAllMarks];
            [self.canvasView setNeedsDisplay];
            break;
        case 5:
            //恢复
        {
            UIViewController *vc = [[CoordinatingController sharedCoordinatingController] storyBoardVC:@"RecoverViewController"];
            [(RecoverViewController *)vc setImg:[UIImage screenshotInView:self.canvasView]];
            [[CoordinatingController sharedCoordinatingController] presentVC:vc];
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
    
    if ([keyPath isEqualToString:@"mark"]) {
        
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



#pragma mark - Delegate

#pragma mark - NSCopying

#pragma mark - NSObject


@end
