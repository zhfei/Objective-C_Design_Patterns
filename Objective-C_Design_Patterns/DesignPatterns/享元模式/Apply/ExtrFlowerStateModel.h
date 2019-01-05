//
//  ExtrFlowerStateModel.h
//  Objective-C_Design_Patterns
//
//  Created by 周飞 on 2019/1/5.
//  Copyright © 2019年 周飞. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ExtrFlowerStateModel : NSObject
@property (nonatomic, strong) UIView *flowerView;
@property (nonatomic, assign) CGRect area;
@end

NS_ASSUME_NONNULL_END
