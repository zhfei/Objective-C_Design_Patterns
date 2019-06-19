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
    
    CGFloat minHeigh = 20.f;
    CGFloat minWidth = 20.f;
    for (NSInteger i = 0; i < 5000; i++) {
        NSString *name = [NSString stringWithFormat:@"flower%ld",(i%6)+1];
        DPFlyweightModel *flyweight = [[DPFlyweightFactory sharedFlyweightFactory] flyweightModelWithName:name];
        
        CGFloat width = arc4random_uniform(80);
        width = width > minWidth ?width: minWidth;
        
        CGFloat heigh = arc4random_uniform(80);
        heigh = heigh > minHeigh ?heigh: minHeigh;
        
        flyweight.area = CGRectMake(arc4random_uniform(320)-width, arc4random_uniform(480)-heigh, width,  heigh);
        [self.view addSubview:flyweight.flower];
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
