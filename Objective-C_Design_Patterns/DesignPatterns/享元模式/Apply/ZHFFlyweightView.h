//
//  ZHFFlyweightView.h
//  Objective-C_Design_Patterns
//
//  Created by 周飞 on 2019/1/5.
//  Copyright © 2019年 周飞. All rights reserved.
//

#import <UIKit/UIKit.h>

//由于C结构体不在引用计数内存管理策略内，导致了僵尸对象访问，待解决。
typedef struct {
    UIView *flowerView;
    CGRect area;
}ExtrFlowerState;

NS_ASSUME_NONNULL_BEGIN

@interface ZHFFlyweightView : UIView
@property (nonatomic, strong) NSMutableArray *flowerList;
@end

NS_ASSUME_NONNULL_END
