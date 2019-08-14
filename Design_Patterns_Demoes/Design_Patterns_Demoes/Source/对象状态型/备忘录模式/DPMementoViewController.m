//
//  DPMementoViewController.m
//  Design_Patterns_Demoes
//
//  Created by 周飞 on 2019/8/12.
//  Copyright © 2019年 zhf. All rights reserved.
//

#import "DPMementoViewController.h"
#import "DPOriginator.h"

@interface DPMementoViewController ()

@end

@implementation DPMementoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    DPOriginator *org = [[DPOriginator alloc] init];
    org.state = @(100);
    
    NSData *data = [org memento];
    
    DPOriginator *org2 = [DPOriginator originatorWithMemento:data];
    NSLog(@"state:%@",org2.state);
    
}

@end
