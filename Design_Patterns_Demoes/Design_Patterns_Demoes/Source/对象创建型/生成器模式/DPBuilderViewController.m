//
//  DPBuilderViewController.m
//  Design_Patterns_Demoes
//
//  Created by 周飞 on 2019/4/20.
//  Copyright © 2019年 zhf. All rights reserved.
//

#import "DPBuilderViewController.h"
#import "DPStandardCharacterBuilder.h"
#import "DPChasingGame.h"


@interface DPBuilderViewController ()

@end

@implementation DPBuilderViewController
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
    [self.view addSubview:self.contextLabel];
}

- (void)setupUI {
    self.view.backgroundColor = [UIColor whiteColor];
}

- (void)setupLayout {
    
}

- (void)setupData {
    self.contextLabel.text = @"生成器模式";
    
    DPStandardCharacterBuilder *builder = [DPStandardCharacterBuilder new];
    DPChasingGame *chase = [DPChasingGame new];
    DPCharacter *enemy = [chase createEnemy:builder];
    NSLog(@"enemy :%@",enemy);
}



#pragma mark - Delegate

#pragma mark - NSCopying

#pragma mark - NSObject

@end
