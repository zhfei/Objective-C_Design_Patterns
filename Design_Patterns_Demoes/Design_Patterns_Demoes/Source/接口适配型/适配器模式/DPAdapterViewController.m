//
//  DPAdapterViewController.m
//  Design_Patterns_Demoes
//
//  Created by zhoufei on 2019/6/13.
//  Copyright © 2019年 zhf. All rights reserved.
//

#import "DPAdapterViewController.h"
#import "DPClient.h"
#import "DPClassAdapter.h"
#import "DPObjectAdapter.h"

@interface DPAdapterViewController ()

@end

@implementation DPAdapterViewController
#pragma mark - Life Cycle
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self addUI];
    [self setupUI];
    [self setupLayout];
    [self setupData];
}



#pragma mark - Private Method


- (void)addUI {
    
}

- (void)setupUI {
    self.view.backgroundColor = [UIColor whiteColor];
}

- (void)setupLayout {
    
}

- (void)setupData {
    //类适配器
    DPClassAdapter *ClsAdapter = [[DPClassAdapter alloc] init];
    [DPClient sharedClient].adapteObj = ClsAdapter;
    
    //对象适配器
    DPObjectAdapter *objAdapter = [[DPObjectAdapter alloc] init];
    [DPClient sharedClient].adapteObj = objAdapter;
    
    //调用
    [[DPClient sharedClient].adapteObj giveMeAPlateOfBraisedFish];
}

// MARK: overwrite

#pragma mark - Public Method

#pragma mark - Event

#pragma mark - Delegate

#pragma mark - Getter, Setter

#pragma mark - NSCopying

#pragma mark - NSObject


@end
