//
//  DPTemplateMethodViewController.m
//  Design_Patterns_Demoes
//
//  Created by 周飞 on 2019/6/27.
//  Copyright © 2019年 zhf. All rights reserved.
//

#import "DPTemplateMethodViewController.h"
#import "DPEntity1Model.h"
#import "DPEntity2Model.h"

@interface DPTemplateMethodViewController ()

@end

@implementation DPTemplateMethodViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    DPTemplateModel *tm1 = [DPEntity1Model new];
    [tm1 startMakingCake];
    
    DPTemplateModel *tm2 = [DPEntity1Model new];
    [tm2 startMakingCake];
}


@end
