//
//  CanvasView.h
//  Objective-C_Design_Patterns
//
//  Created by zhoufei on 2018/10/4.
//  Copyright © 2018年 周飞. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Mark.h"

@interface CanvasView : UIView
- (void)configMark:(id<Mark>)mark;
- (void)configHistoryPaths:(NSMutableArray<id<Mark>> *)historyPaths;

@end
