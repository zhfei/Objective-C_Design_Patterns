//
//  DPCanvasViewGenerator.h
//  Design_Patterns_Demoes
//
//  Created by 周飞 on 2019/4/7.
//  Copyright © 2019年 zhf. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DPCanvasView.h"

NS_ASSUME_NONNULL_BEGIN

@interface DPCanvasViewGenerator : NSObject
- (DPCanvasView *)canvasViewWithFrame:(CGRect)frame;

@end

NS_ASSUME_NONNULL_END
