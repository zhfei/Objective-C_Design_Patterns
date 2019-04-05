//
//  DPCanvasView.h
//  Design_Patterns_Demoes
//
//  Created by 周飞 on 2019/4/5.
//  Copyright © 2019年 zhf. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Mark.h"

NS_ASSUME_NONNULL_BEGIN

@interface DPCanvasView : UIView
@property (nonatomic, strong) id<Mark> mark;
@end

NS_ASSUME_NONNULL_END
