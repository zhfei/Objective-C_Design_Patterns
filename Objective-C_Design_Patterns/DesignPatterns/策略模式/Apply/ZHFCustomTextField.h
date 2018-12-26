//
//  ZHFCustomTextField.h
//  Objective-C_Design_Patterns
//
//  Created by zhoufei on 2018/12/26.
//  Copyright © 2018年 周飞. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ZHFInputValidator.h"

NS_ASSUME_NONNULL_BEGIN

@interface ZHFCustomTextField : UITextField
{
    @private
    ZHFInputValidator *validator_;
}
@property (nonatomic, strong) IBOutlet ZHFInputValidator *validator;

- (BOOL)validate;
@end

NS_ASSUME_NONNULL_END
