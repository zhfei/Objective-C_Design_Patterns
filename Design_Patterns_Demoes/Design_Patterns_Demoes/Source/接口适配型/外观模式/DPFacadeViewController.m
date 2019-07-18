//
//  DPFacadeViewController.m
//  Design_Patterns_Demoes
//
//  Created by 周飞 on 2019/7/13.
//  Copyright © 2019年 zhf. All rights reserved.
//

#import "DPFacadeViewController.h"
#import "DPFacader.h"

@interface DPFacadeViewController ()

@end

@implementation DPFacadeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    DPFacader *facader = [DPFacader new];
    [facader eatFood];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
