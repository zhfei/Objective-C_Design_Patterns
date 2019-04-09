//
//  DPAbstractFactoryViewController.m
//  Design_Patterns_Demoes
//
//  Created by 周飞 on 2019/4/9.
//  Copyright © 2019年 zhf. All rights reserved.
//

#import "DPAbstractFactoryViewController.h"
#import "DPSouthFruitsFactory.h"
#import "DPNorthFruitsFactory.h"

@interface DPAbstractFactoryViewController ()

@end

@implementation DPAbstractFactoryViewController
#pragma mark - Life Cycle
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self addUI];
    [self setupUI];
    [self setupLayout];
    [self setupData];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    DPAbstractFruitsFactory *abSouthFac = [DPSouthFruitsFactory new];
    DPAbstractFruitsFactory *abNorthFac = [DPNorthFruitsFactory new];

    
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
