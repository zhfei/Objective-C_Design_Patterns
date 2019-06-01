//
//  DPSingleViewController.m
//  Design_Patterns_Demoes
//
//  Created by 周飞 on 2019/3/28.
//  Copyright © 2019年 zhf. All rights reserved.
//

#import "DPSingleViewController.h"
#import "DPSingleObject.h"

@interface DPSingleViewController ()

@end

@implementation DPSingleViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        DPSingleObject *obj = [DPSingleObject sharedInstance];
        NSLog(@"obj:%@",obj);
    });
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        DPSingleObject *obj = [DPSingleObject sharedInstance];
        NSLog(@"obj:%@",obj);
    });
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        DPSingleObject *obj = [DPSingleObject sharedInstance];
        NSLog(@"obj:%@",obj);
    });
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
