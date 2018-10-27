//
//  RecoverViewController.m
//  Objective-C_Design_Patterns
//
//  Created by 周飞 on 2018/10/27.
//  Copyright © 2018年 周飞. All rights reserved.
//

#import "RecoverViewController.h"

@interface RecoverViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *image;

@end

@implementation RecoverViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.image.image = self.img;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self dismissViewControllerAnimated:YES completion:nil];
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
