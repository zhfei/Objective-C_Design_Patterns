//
//  DPStrategyViewController.m
//  Design_Patterns_Demoes
//
//  Created by 周飞 on 2019/7/2.
//  Copyright © 2019年 zhf. All rights reserved.
//

#import "DPStrategyViewController.h"
#import "DPStrategyNumberValidModel.h"
#import "DPStrategyStringValidModel.h"


@interface DPStrategyViewController ()

@end

@implementation DPStrategyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    DPStrategyValidModel *strategy = [DPStrategyNumberValidModel new];
    
    NSError *error;
    [strategy validText:@"123456789a" error:&error];
    
}

@end
