//
//  ZHFCanvasView.h
//  Objective-C_Design_Patterns
//
//  Created by 周飞 on 2018/11/19.
//  Copyright © 2018年 周飞. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Mark.h"

NS_ASSUME_NONNULL_BEGIN

@interface ZHFCanvasView : UIView
- (void)configMark:(id<Mark>)mark;
- (void)configHistoryPaths:(NSMutableArray<id<Mark>> *)historyPaths;
- (void)configImage:(UIImage *)image;
@end

NS_ASSUME_NONNULL_END
