//
//  ZHFRootCoordinater.m
//  Objective-C_Design_Patterns
//
//  Created by 周飞 on 2018/11/11.
//  Copyright © 2018年 周飞. All rights reserved.
//

#import "ZHFRootCoordinater.h"

@interface ZHFRootCoordinater ()
@property (nonatomic, strong) UINavigationController *navigationController;

@end

@implementation ZHFRootCoordinater
- (instancetype)initWithNav:(UINavigationController *)nav {
    if (self = [super init]) {
        self.navigationController = nav;
    }
    return self;
}

- (void)pushStoryVC:(NSString *)storyBoardID {
    UIViewController *targetVC = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:storyBoardID];
    [self.navigationController pushViewController:targetVC animated:YES];
}

- (void)pushVC:(UIViewController *)vc {
    [self.navigationController pushViewController:vc animated:YES];
}
@end
