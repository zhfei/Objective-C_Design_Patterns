//
//  ZHFFactoryPatternVC.m
//  Objective-C_Design_Patterns
//
//  Created by 周飞 on 2018/11/17.
//  Copyright © 2018年 周飞. All rights reserved.
//

#import "ZHFFactoryPatternVC.h"

@interface ZHFFactoryPatternVC ()

@end

@implementation ZHFFactoryPatternVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    NSNumber *num1 = [[NSNumber alloc] init];
    NSNumber *num2 = [[NSNumber alloc] initWithInt:10];
    NSLog(@"%@,%@",num1,num2);
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
