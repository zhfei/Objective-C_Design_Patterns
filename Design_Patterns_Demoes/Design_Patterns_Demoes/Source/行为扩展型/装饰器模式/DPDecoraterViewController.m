//
//  DPDecoraterViewController.m
//  Design_Patterns_Demoes
//
//  Created by 周飞 on 2019/7/5.
//  Copyright © 2019年 zhf. All rights reserved.
//

#import "DPDecoraterViewController.h"
#import "DPImageFilterObject1.h"
#import "DPImageComponentObject1.h"

@interface DPDecoraterViewController ()

@end

@implementation DPDecoraterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    DPImageComponentObject1 *imageObject = [DPImageComponentObject1 new];
    
    //添加装饰器filterObject
    DPImageFilterObject1 *filterObject = [DPImageFilterObject1 imageFilter:imageObject];
    [filterObject operation];
}

@end
