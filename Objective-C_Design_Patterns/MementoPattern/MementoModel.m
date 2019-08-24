//
//  MementoModel.m
//  Objective-C_Design_Patterns
//
//  Created by 周飞 on 2018/11/1.
//  Copyright © 2018年 周飞. All rights reserved.
//

#import "MementoModel.h"
#import <UIColor+Transform.h>

@implementation MarkMementoModel
+ (instancetype)mementoModel:(UIColor *)color size:(CGSize)size location:(CGPoint)location {
    MarkMementoModel *model = [MarkMementoModel new];
    model.colorHexState = [UIColor hexStringFromColor:color];
    model.sizeState = size;
    model.locationState = location;
    return model;
}
@end


@implementation ScrawlMementoModel
+ (instancetype)mementoModel:(NSString *)scrawState {
    ScrawlMementoModel *model = [ScrawlMementoModel new];
    model.scrawState;
    return model;
}

@end
