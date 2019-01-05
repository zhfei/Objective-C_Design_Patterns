//
//  ZHFFlyweightView.m
//  Objective-C_Design_Patterns
//
//  Created by 周飞 on 2019/1/5.
//  Copyright © 2019年 周飞. All rights reserved.
//

#import "ZHFFlyweightView.h"
#import "ZHFFlowerView.h"
#import "ZHFFlowerFactory.h"
#import "ExtrFlowerStateModel.h"

@implementation ZHFFlyweightView

- (void)setFlowerList:(NSMutableArray *)flowerList {
    _flowerList = flowerList;
    [self setNeedsDisplay];
}

- (void)drawRect:(CGRect)rect {
    // Drawing code
//    for (NSValue *value in self.flowerList) {
//        ExtrFlowerState state;
//        [value getValue:&state];
//        NSInteger num = [self.flowerList indexOfObject:value];
//        ZHFFlowerView *fv = state.flowerView;
//        CGRect area = state.area;
//        [fv drawRect:area];
//    }
    
    for (int i = 0; i < self.flowerList.count; i++) {
         ExtrFlowerStateModel *model  = [self.flowerList objectAtIndex:i];
        
//        ExtrFlowerState state;
//        [value getValue:&state];
        
        ZHFFlowerView *fv = model.flowerView;
        CGRect area = model.area;
        [fv drawRect:area];
    }
}

@end
