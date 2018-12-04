//
//  PaletteViewController.h
//  Objective-C_Design_Patterns
//
//  Created by zhoufei on 2018/10/4.
//  Copyright © 2018年 周飞. All rights reserved.
//
//  调色板控制器

#import <UIKit/UIKit.h>
#import "ZHFSetStrokeColorCommandDelegate.h"

@interface PaletteViewController : UITableViewController<ZHFSetStrokeColorCommandDelegate>

@end
