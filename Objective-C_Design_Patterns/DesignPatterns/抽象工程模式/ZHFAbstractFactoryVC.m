//
//  ZHFAbstractFactoryVC.m
//  Objective-C_Design_Patterns
//
//  Created by 周飞 on 2018/11/27.
//  Copyright © 2018年 周飞. All rights reserved.
//

#import "ZHFAbstractFactoryVC.h"
#import "ZHFBrandingFactory.h"

#define USE_ACME 1

@interface ZHFAbstractFactoryVC ()

@end

@implementation ZHFAbstractFactoryVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    ZHFBrandingFactory *bf = [ZHFBrandingFactory factory];
    UIView *bView = [bf brandingView];
    UIButton *bBtn = [bf brandingMainButton];
    UIToolbar *bToolbar = [bf brandingToolbar];
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
