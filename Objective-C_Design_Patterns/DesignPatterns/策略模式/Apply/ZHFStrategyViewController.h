//
//  ZHFStrategyViewController.h
//  Objective-C_Design_Patterns
//
//  Created by zhoufei on 2018/12/26.
//  Copyright © 2018年 周飞. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ZHFCustomTextField.h"
#import "ZHFAlphaInputValidator.h"
#import "ZHFNumberInputValidator.h"

NS_ASSUME_NONNULL_BEGIN

@interface ZHFStrategyViewController : UIViewController
{
    @private
    ZHFCustomTextField *numTextField_;
    ZHFCustomTextField *alphaTextField_;
}
@property (nonatomic, weak) IBOutlet ZHFCustomTextField *numTextField;
@property (nonatomic, weak) IBOutlet ZHFCustomTextField *alphaTextField;

@end

NS_ASSUME_NONNULL_END
