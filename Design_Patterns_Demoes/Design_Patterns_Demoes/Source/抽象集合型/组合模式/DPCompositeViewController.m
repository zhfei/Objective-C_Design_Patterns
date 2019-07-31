//
//  DPCompositeViewController.m
//  Design_Patterns_Demoes
//
//  Created by zhoufei on 2019/7/29.
//  Copyright © 2019年 zhf. All rights reserved.
//

#import "DPCompositeViewController.h"
#import "DPComposite.h"
#import "DPLeaf.h"

@interface DPCompositeViewController ()
@property (nonatomic, strong) NSMutableArray<id<DPCompositeProtocol>> *compositePool;

@end

@implementation DPCompositeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"%@",NSStringFromSelector(_cmd));
}

- (void)touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"%@",NSStringFromSelector(_cmd));
}

- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"%@",NSStringFromSelector(_cmd));
}

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"%@",NSStringFromSelector(_cmd));
}

- (NSMutableArray<id<DPCompositeProtocol>> *)compositePool {
    if (!_compositePool) {
        _compositePool = @[].mutableCopy;
    }
    return _compositePool;
}

@end
