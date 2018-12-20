//
//  ZHFDecoratorViewController.m
//  Objective-C_Design_Patterns
//
//  Created by zhoufei on 2018/12/19.
//  Copyright © 2018年 周飞. All rights reserved.
//

#import "ZHFDecoratorViewController.h"
#import "ZHFImageTransformFilter.h"
#import "ZHFImageShadowFilter.h"
#import "ZHFDecoratorView.h"
#import "UIImage+ZHFTransform.h"
#import "UIImage+ZHFShadow.h"

@interface ZHFDecoratorViewController ()
@property (nonatomic, strong) UIImage *image;
@property (nonatomic, strong) ZHFDecoratorView *decV;
@end

@implementation ZHFDecoratorViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.image = [UIImage imageNamed:@"peiqi"];

    self.decV = [[ZHFDecoratorView alloc] initWithFrame:self.view.bounds];
    self.decV.backgroundColor = UIColor.whiteColor;
    [self.view addSubview:self.decV];
    [self.decV setImage:_image];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    CGAffineTransform rotate = CGAffineTransformMakeRotation(-M_PI/4.0);
    CGAffineTransform translate = CGAffineTransformMakeTranslation(-self.image.size.width/8.0, -self.image.size.height/8.0);
    CGAffineTransform finalTransform = CGAffineTransformConcat(rotate, translate);
    
//    id<ZHFImageComponent> transFilter = [[ZHFImageTransformFilter alloc] initWithImageComponent:self.image transform:finalTransform];
//    id<ZHFImageComponent> shodow = [[ZHFImageShadowFilter alloc] initWithImageComponent:transFilter];

    UIImage *tranf = [self.image imageWithTransform:finalTransform];
    
    UIImage *shodow = [tranf imageWithDropShadow];
    
    [self.decV setImage:shodow];
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
