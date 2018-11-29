//
//  ZHFBuilderPatternVC.m
//  Objective-C_Design_Patterns
//
//  Created by zhoufei on 2018/11/30.
//  Copyright © 2018年 周飞. All rights reserved.
//

#import "ZHFBuilderPatternVC.h"
#import "ZHFStandardCharacteBuilder.h"
#import "ZHFChasingGame.h"

@interface ZHFBuilderPatternVC ()

@end

@implementation ZHFBuilderPatternVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    ZHFStandardCharacteBuilder *stcb = [ZHFStandardCharacteBuilder new];
    ZHFChasingGame *cg = [[ZHFChasingGame alloc] init];
    ZHFCharacter *player = [cg createPlayer:stcb];
    ZHFCharacter *enemy = [cg createEnemy:stcb];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
