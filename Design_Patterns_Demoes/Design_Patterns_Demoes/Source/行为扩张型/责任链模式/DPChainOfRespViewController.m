//
//  DPChainOfRespViewController.m
//  Design_Patterns_Demoes
//
//  Created by zhoufei on 2019/6/20.
//  Copyright © 2019年 zhf. All rights reserved.
//

#import "DPChainOfRespViewController.h"
#import "DPEventA.h"
#import "DPEventB.h"
#import "DPEventAHandler.h"
#import "DPEventBHandler.h"


@interface DPChainOfRespViewController ()

@end

@implementation DPChainOfRespViewController
#pragma mark - Life Cycle
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self addUI];
    [self setupUI];
    [self setupLayout];
    [self setupData];
    [self initData];
}


#pragma mark - Private Method


- (void)addUI {
    
}

- (void)setupUI {
    self.view.backgroundColor = [UIColor whiteColor];
}

- (void)setupLayout {
    
}

- (void)initData {
    
}

- (void)setupData {
    DPEventAHandler *eventAHandler = [DPEventAHandler new];
    
    DPEventBHandler *eventBHandler = [DPEventBHandler new];

    
}

// MARK: overwrite

#pragma mark - Public Method

#pragma mark - Event

#pragma mark - Delegate

#pragma mark - Getter, Setter

#pragma mark - NSCopying

#pragma mark - NSObject

@end
