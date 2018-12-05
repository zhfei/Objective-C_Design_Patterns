//
//  ZHFCommandSlider.h
//  Objective-C_Design_Patterns
//
//  Created by zhoufei on 2018/12/4.
//  Copyright © 2018年 周飞. All rights reserved.
//
//  被适配者

#import <UIKit/UIKit.h>
#import "ZHFCommand.h"

NS_ASSUME_NONNULL_BEGIN

@interface ZHFCommandSlider : UISlider
{
    @protected
    ZHFCommand *command_;
}
@property (nonatomic, retain) IBOutlet ZHFCommand *command;
@end

NS_ASSUME_NONNULL_END
