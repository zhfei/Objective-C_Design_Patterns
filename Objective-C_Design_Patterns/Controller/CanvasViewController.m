//
//  CanvasViewController.m
//  Objective-C_Design_Patterns
//
//  Created by zhoufei on 2018/10/2.
//  Copyright © 2018年 周飞. All rights reserved.
//

#import "CanvasViewController.h"
#import "CanvasView.h"

@interface CanvasViewController ()

@property (weak, nonatomic) IBOutlet CanvasView *canvasView;
@end

@implementation CanvasViewController
#pragma mark - Life Cycle
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

}



- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"touchesBegan---------:%@",NSStringFromCGPoint([touches.anyObject locationInView:_canvasView]));
    
    
}

- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"touchesMoved:%@",NSStringFromCGPoint([touches.anyObject locationInView:_canvasView]));
}

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"touchesEnded********:%@",NSStringFromCGPoint([touches.anyObject locationInView:_canvasView]));
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
