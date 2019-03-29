//
//  DPBaseViewController.m
//  Design_Patterns_Demoes
//
//  Created by 周飞 on 2019/3/29.
//  Copyright © 2019年 zhf. All rights reserved.
//

#import "DPBaseViewController.h"

@interface DPBaseViewController ()

@end

@implementation DPBaseViewController
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
}

- (void)setupLayout {
    
}

- (void)setupData {
    
}



#pragma mark - Delegate

#pragma mark - NSCopying

#pragma mark - NSObject

@end
