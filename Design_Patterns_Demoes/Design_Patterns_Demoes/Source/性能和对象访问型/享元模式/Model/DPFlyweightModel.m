//
//  DPFlyweightModel.m
//  Design_Patterns_Demoes
//
//  Created by zhoufei on 2019/6/14.
//  Copyright © 2019年 zhf. All rights reserved.
//

#import "DPFlyweightModel.h"

@implementation DPFlyweightModel
- (UIImageView *)flower {
    if (!_flower) {
        _flower = [UIImageView new];
        _flower.contentMode = UIViewContentModeScaleToFill;
    }
    _flower.frame = _area;
    return _flower;
}


@end
