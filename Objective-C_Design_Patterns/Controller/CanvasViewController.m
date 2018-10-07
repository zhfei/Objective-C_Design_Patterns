//
//  CanvasViewController.m
//  Objective-C_Design_Patterns
//
//  Created by zhoufei on 2018/10/2.
//  Copyright © 2018年 周飞. All rights reserved.
//

#import "CanvasViewController.h"
#import "CanvasView.h"
#import "Stroke.h"
#import "Vertex.h"

@interface CanvasViewController ()
@property (weak, nonatomic) IBOutlet CanvasView *canvasView;
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
    [self.canvasView configMark:self.stroke];
    [self.canvasView configHistoryPaths:_paths];
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

#pragma mark - Event
- (IBAction)segmentAction:(UISegmentedControl *)sender {
    UIViewController *objVC;
    switch (sender.selectedSegmentIndex) {
        case 0:
            //删除
            
            break;
        case 1:
            //保存
            
            break;
        case 2:
            //打开
            objVC = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"ThumbnailViewControllerNav"];
            break;
        case 3:
            //设置
            objVC = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"PaletteViewControllerNav"];
            break;
        case 4:
            //撤销
            
            break;
        case 5:
            //恢复
            
            break;
            
        default:
            break;
    }
    
    objVC?[self presentViewController:objVC animated:YES completion:nil]:nil;
}


//其他界面返回到此界面调用的方法
- (IBAction)ViewController1UnwindSegue:(UIStoryboardSegue *)unwindSegue {
    if ([@"fromPalette" isEqualToString:unwindSegue.identifier]) {
        NSLog(@"fromPalette.....");
    } else if ([@"fromThumbnail" isEqualToString:unwindSegue.identifier]) {
        NSLog(@"fromThumbnail.....");
    }
}
#pragma mark - Public Method

#pragma mark - Private Method

#pragma mark - Delegate

#pragma mark - NSCopying

#pragma mark - NSObject


@end
