//
//  CoordinatingController.m
//  Objective-C_Design_Patterns
//
//  Created by zhoufei on 2018/10/2.
//  Copyright © 2018年 周飞. All rights reserved.
//

#import "CoordinatingController.h"
#import "RecoverViewController.h"

@implementation CoordinatingController
+ (void)persentStoryBoardVC:(NSString *)storyBoardID image:(UIImage *)image {
   RecoverViewController *targetVC = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:storyBoardID];
    targetVC.img = image;
    
    UIViewController *root = [UIApplication sharedApplication].keyWindow.rootViewController;
    [root presentViewController:targetVC animated:YES completion:nil];
}

@end
