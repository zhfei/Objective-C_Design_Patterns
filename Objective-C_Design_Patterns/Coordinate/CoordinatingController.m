//
//  CoordinatingController.m
//  Objective-C_Design_Patterns
//
//  Created by zhoufei on 2018/10/2.
//  Copyright © 2018年 周飞. All rights reserved.
//

#import "CoordinatingController.h"
#import "RecoverViewController.h"
#import "CanvasViewController.h"

@interface CoordinatingController()
@property (nonatomic, strong)CanvasViewController *canvasVC;
@end

@implementation CoordinatingController
SingletonM(CoordinatingController)
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.canvasVC = [CanvasViewController new];
    }
    return self;
}

- (CanvasViewController *)canvasViewController {
    return self.canvasVC;
}


#pragma mark - tools
- (void)presentVC:(UIViewController *)targetVC {
    UIViewController *root = [UIApplication sharedApplication].keyWindow.rootViewController;
    [root presentViewController:targetVC animated:YES completion:nil];
}

- (void)presentStoryBoardVC:(NSString *)storyBoardID {
    UIViewController *targetVC = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:storyBoardID];
    
    UIViewController *root = [UIApplication sharedApplication].keyWindow.rootViewController;
    [root presentViewController:targetVC animated:YES completion:nil];
}

- (void)presentStoryBoardVC:(NSString *)storyBoardID storyBoardName:(NSString *)name {
    UIViewController *targetVC = [[UIStoryboard storyboardWithName:name bundle:nil] instantiateViewControllerWithIdentifier:storyBoardID];
    
    UIViewController *root = [UIApplication sharedApplication].keyWindow.rootViewController;
    [root presentViewController:targetVC animated:YES completion:nil];
}

- (UIViewController *)storyBoardVC:(NSString *)storyBoardID {
    UIViewController *targetVC = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:storyBoardID];
    return targetVC;
}

@end
