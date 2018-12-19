//
//  ZHFDecoratorViewController.m
//  Objective-C_Design_Patterns
//
//  Created by zhoufei on 2018/12/19.
//  Copyright © 2018年 周飞. All rights reserved.
//

#import "ZHFDecoratorViewController.h"
#import "UIImage+ZHFImageComponent.h"
//#import "ZHFImageTransformFilter.h"
//#import "ZHFImageShadowFilter.m"

@interface ZHFDecoratorViewController ()

@end

@implementation ZHFDecoratorViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIImage *image = [UIImage imageNamed:@"dog"];
    
    CGAffineTransform rotate = CGAffineTransformMakeRotation(-M_PI/4.0);
    CGAffineTransform translate = CGAffineTransformMakeTranslation(-image.size.width/2, -image.size.height/8.0);
    CGAffineTransform finalTransform = CGAffineTransformConcat(rotate, translate);
    
//    id<ZHFImageComponent> transFilter = [[ZHFImageTransformFilter alloc] initWithImageComponent:image transform:finalTransform];
//
//    id<ZHFImageComponent> shodow = [[ZHFImageShadowFilter alloc] initWithImageComponent:image];
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
