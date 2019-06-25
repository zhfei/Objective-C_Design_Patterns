//
//  DPCommandViewController.m
//  Design_Patterns_Demoes
//
//  Created by zhoufei on 2019/6/25.
//  Copyright © 2019年 zhf. All rights reserved.
//

#import "DPCommandViewController.h"
#import "DPInvoker.h"
#import "DPReceiver.h"
#import "DPInvocation.h"

@interface DPCommandViewController ()

@end

@implementation DPCommandViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self setupData];
}

//持有关系：Invoker -> Invocation -> receiver
- (void)setupData {
    DPReceiver *receiver = [DPReceiver new];
    NSInvocation *invocatin = [receiver receiverInvocationMethod];
    DPInvoker *invoker = [DPInvoker invokerWithInvocation:invocatin];
    
    [invoker.invocatin invoke];
}


@end
