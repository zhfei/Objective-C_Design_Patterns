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
#import "DPAbstractFruitsFactory.h"

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
    DPAbstractFruitsFactory *factory = [DPAbstractFruitsFactory factory];

    NSLog(@"factory:%@",factory);
}

#pragma mark - Getter, Setter

#pragma mark - Event

#pragma mark - Public Method

#pragma mark - Private Method


- (void)addUI {
    [self.view addSubview:self.contextLabel];
}

- (void)setupUI {
    self.view.backgroundColor = [UIColor whiteColor];
}

- (void)setupLayout {
    
}

- (void)setupData {
    self.contextLabel.text = @"抽象工厂模式";
}



#pragma mark - Delegate

#pragma mark - NSCopying

#pragma mark - NSObject

@end
