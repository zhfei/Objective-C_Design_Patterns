//
//  ZHFCoordinateViewController.h
//  Objective-C_Design_Patterns
//
//  Created by zhoufei on 2018/12/4.
//  Copyright © 2018年 周飞. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <BottomComponentLib/Macro.h>
#import "CanvasViewController.h"
#import "ThumbnailViewController.h"

NS_ASSUME_NONNULL_BEGIN

typedef enum : NSUInteger {
    kButtonTagDone = 0,
    kButtonTagOpenPaletteView,
    kButtonTagOpenThumbnailView
} ButtonTag;

@interface ZHFCoordinateViewController : NSObject
{
    @private
    CanvasViewController *canvasViewController_;
    UIViewController *activeViewController_;
}
SingletonH(ZHFCoordinateViewController)
@property (nonatomic, strong, readonly) CanvasViewController *canvasViewController;
@property (nonatomic, strong, readonly) UIViewController *activeViewController;


/**
 直接链接IB控件的事件，来触发视图转移逻辑
 */
- (IBAction)requestViewChangeByObject:(id)object;
@end

NS_ASSUME_NONNULL_END
