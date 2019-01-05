//
//  ZHFFlyweightView.h
//  Objective-C_Design_Patterns
//
//  Created by 周飞 on 2019/1/5.
//  Copyright © 2019年 周飞. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef struct {
    UIView *flowerView;
    CGRect area;
}ExtrFlowerState;

NS_ASSUME_NONNULL_BEGIN

@interface ZHFFlyweightView : UIView
@property (nonatomic, strong) NSMutableArray *flowerList;
@end

NS_ASSUME_NONNULL_END
