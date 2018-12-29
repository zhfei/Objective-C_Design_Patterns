//
//  ZHFStrategyViewController.m
//  Objective-C_Design_Patterns
//
//  Created by zhoufei on 2018/12/26.
//  Copyright © 2018年 周飞. All rights reserved.
//

#import "ZHFStrategyViewController.h"

@interface ZHFStrategyViewController () <UITextFieldDelegate>

@end

@implementation ZHFStrategyViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}


#pragma mark -
#pragma mark - UITextFieldDelegate
- (void)textFieldDidEndEditing:(UITextField *)textField {

    if ([textField isKindOfClass:[ZHFCustomTextField class]]) {
        [(ZHFCustomTextField *)textField validator];
    }
}

@end
