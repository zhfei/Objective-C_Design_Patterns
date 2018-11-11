//
//  ZHFProtoTypeVC.m
//  Objective-C_Design_Patterns
//
//  Created by 周飞 on 2018/11/11.
//  Copyright © 2018年 周飞. All rights reserved.
//

#import "ZHFProtoTypeVC.h"
#import "ZHFProtoTypeModelA.h"
#import "Vertex.h"

@interface ZHFProtoTypeVC ()<NSCopying>

@end

@implementation ZHFProtoTypeVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
//    [self testCopy];
    [self testInterfaceImplet];
}

- (void)testCopy {
    ZHFProtoTypeModelA *modelA = [ZHFProtoTypeModelA new];
    modelA.name = @"jack";
    
    ZHFProtoTypeModelA *modelB = [modelA mutableCopy];
    NSLog(@"%@",modelB.name);
}

- (void)testInterfaceImplet {
    Vertex *vx = [[Vertex alloc] init];
    [vx lastChild];
}

@end
