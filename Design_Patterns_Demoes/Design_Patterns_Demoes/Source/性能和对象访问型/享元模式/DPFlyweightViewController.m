//
//  DPFlyweightViewController.m
//  Design_Patterns_Demoes
//
//  Created by zhoufei on 2019/6/14.
//  Copyright © 2019年 zhf. All rights reserved.
//

#import "DPFlyweightViewController.h"
#import "DPFlyweightFactory.h"

@interface DPFlyweightViewController ()

@end

@implementation DPFlyweightViewController
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
    NSMutableArray *pool = @[].mutableCopy;
    
    for (NSInteger i = 0; i < 5000; i++) {
        DPFlyweightModel *flyweight = [[DPFlyweightFactory sharedFlyweightFactory] flyweightModelWithName:@""];
        flyweight.area = CGRectMake(arc4random_uniform(320), arc4random_uniform(480), arc4random_uniform(320),  arc4random_uniform(480));
        [pool addObject:flyweight];
    }

}

- (void)setupLayout {
    
}

- (void)initData {
    
}

- (void)setupData {
    
}

// MARK: overwrite

#pragma mark - Public Method

#pragma mark - Event

#pragma mark - Delegate

#pragma mark - Getter, Setter

#pragma mark - NSCopying

#pragma mark - NSObject



@end
