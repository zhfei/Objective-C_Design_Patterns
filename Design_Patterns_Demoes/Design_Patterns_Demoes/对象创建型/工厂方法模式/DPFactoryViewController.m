//
//  DPFactoryViewController.m
//  Design_Patterns_Demoes
//
//  Created by 周飞 on 2019/4/6.
//  Copyright © 2019年 zhf. All rights reserved.
//

#import "DPFactoryViewController.h"

@interface DPFactoryViewController ()

@end

@implementation DPFactoryViewController
#pragma mark - Life Cycle
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self addUI];
    [self setupUI];
    [self setupLayout];
    [self setupData];
}

#pragma mark - Getter, Setter

#pragma mark - Event

#pragma mark - Public Method

#pragma mark - Private Method


- (void)addUI {
    
}

- (void)setupUI {
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"工厂方法模式";
}

- (void)setupLayout {
    
}

- (void)setupData {
    
}



#pragma mark - Delegate

#pragma mark - NSCopying

#pragma mark - NSObject

@end
