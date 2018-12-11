//
//  ZHFCoordinateViewController.m
//  Objective-C_Design_Patterns
//
//  Created by zhoufei on 2018/12/4.
//  Copyright © 2018年 周飞. All rights reserved.
//

#import "ZHFCoordinateViewController.h"
#import "CoordinatingController.h"
#import "PaletteViewController.h"

@interface ZHFCoordinateViewController ()

@end

@implementation ZHFCoordinateViewController
@synthesize canvasViewController = canvasViewController_;
@synthesize activeViewController = activeViewController_;
SingletonM(ZHFCoordinateViewController)

- (CanvasViewController *)canvasViewController {
    if (!canvasViewController_) {
        canvasViewController_ = [[CoordinatingController sharedCoordinatingController] storyBoardVC:@"CanvasViewController"];
    }
    return canvasViewController_;
}

- (IBAction)requestViewChangeByObject:(id)object {
    if ([object isKindOfClass:[UIButton class]]) {
        switch ([(UIButton *)object tag]) {
            case kButtonTagOpenPaletteView:
            {
                
                PaletteViewController *palette = [[CoordinatingController sharedCoordinatingController] storyBoardVC:@"PaletteViewControllerNav"];
                [canvasViewController_ presentViewController:palette animated:YES completion:nil];
                activeViewController_ = palette;
            }
                break;
            case kButtonTagOpenThumbnailView:
            {
                //打开
                ThumbnailViewController *palette = [[CoordinatingController sharedCoordinatingController] storyBoardVC:@"ThumbnailViewControllerNav"];
                WeakSelf
                [(ThumbnailViewController *)[(UINavigationController *)palette topViewController] setBlock:^(UIImage *image) {
                    StrongSelf
                    [self.canvasViewController.canvasView configImage:image];
                }];
                
                [canvasViewController_ presentViewController:palette animated:YES completion:nil];
                activeViewController_ = palette;
            }
                break;
                
            default:
            {
                [canvasViewController_ dismissViewControllerAnimated:YES completion:nil];
                activeViewController_ = canvasViewController_;
            }
                break;
        }
    } else {
        [canvasViewController_ dismissViewControllerAnimated:YES completion:nil];
        activeViewController_ = canvasViewController_;
    }
}


@end
