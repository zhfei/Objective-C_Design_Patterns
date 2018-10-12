//
//  CanvasViewController.m
//  Objective-C_Design_Patterns
//
//  Created by zhoufei on 2018/10/2.
//  Copyright © 2018年 周飞. All rights reserved.
//

#import "CanvasViewController.h"
#import "ThumbnailViewController.h"
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

#pragma mark - Event
- (IBAction)tapAction:(UIButton *)sender {
    UIViewController *objVC;
    switch (sender.tag) {
        case 0:
            //删除
            [self.stroke removeAllMarks];
            [self.paths removeAllObjects];
            [self.canvasView setNeedsDisplay];
            break;
        case 1:
            //保存
            UIImageWriteToSavedPhotosAlbum([UIImage screenshotInView:self.canvasView], self, @selector(image:didFinishSavingWithError:contextInfo:), NULL);
            
            self.stroke.color = [UIColor colorWithHexString:[GlobalConfig sharedGlobalConfig].lineColorHex alpha:1];
            self.stroke.size = CGSizeMake([GlobalConfig sharedGlobalConfig].lineWidth, 0);
            self.stroke.location = CGPointZero;
            [self.stroke removeAllMarks];
            
            [self.paths removeAllObjects];
            [self.canvasView setNeedsDisplay];
            
            break;
        case 2:
        {
            //打开
            objVC = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"ThumbnailViewControllerNav"];
            WeakSelf
            [(ThumbnailViewController *)[(UINavigationController *)objVC topViewController] setBlock:^(UIImage *image) {
                StrongSelf
                [self.canvasView configImage:image];
            }];
        }
            break;
        case 3:
            //设置
            objVC = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"PaletteViewControllerNav"];
            break;
        case 4:
            //撤销
            [self.paths removeLastObject];
            [self.stroke removeAllMarks];
            [self.canvasView setNeedsDisplay];
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
