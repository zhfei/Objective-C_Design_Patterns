//
//  ZHFCoordinateViewController.m
//  Objective-C_Design_Patterns
//
//  Created by zhoufei on 2018/12/4.
//  Copyright © 2018年 周飞. All rights reserved.
//

#import "ZHFCoordinateViewController.h"
#import "PaletteViewController.h"

@interface ZHFCoordinateViewController ()

@end

@implementation ZHFCoordinateViewController
@synthesize canvasViewController = canvasViewController_;
@synthesize activeViewController = activeViewController_;
SingletonM(ZHFCoordinateViewController)

- (CanvasViewController *)canvasViewController {
    if (!canvasViewController_) {
        canvasViewController_ = [CanvasViewController new];
    }
    return canvasViewController_;
}

- (void)requestViewChangeByObject:(id)object {
    if ([object isKindOfClass:[UIBarButtonItem class]]) {
        switch ([(UIBarButtonItem *)object tag]) {
            case kButtonTagOpenPaletteView:
            {
                PaletteViewController *palette = [PaletteViewController new];
                [canvasViewController_ presentViewController:palette animated:YES completion:nil];
                activeViewController_ = palette;
            }
                break;
            case kButtonTagOpenThumbnailView:
            {
                ThumbnailViewController *palette = [ThumbnailViewController new];
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
