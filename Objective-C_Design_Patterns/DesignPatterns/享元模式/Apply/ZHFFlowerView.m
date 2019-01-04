//
//  ZHFFlowerView.m
//  Objective-C_Design_Patterns
//
//  Created by 周飞 on 2019/1/4.
//  Copyright © 2019年 周飞. All rights reserved.
//

#import "ZHFFlowerView.h"

@implementation ZHFFlowerView
- (void)drawRect:(CGRect)rect {
    [self.image drawInRect:rect];
}

@end
