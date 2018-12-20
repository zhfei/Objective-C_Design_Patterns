//
//  UIImage+ZHFTransform.h
//  Objective-C_Design_Patterns
//
//  Created by zhoufei on 2018/12/20.
//  Copyright © 2018年 周飞. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (ZHFTransform)
- (UIImage *)imageWithTransform:(CGAffineTransform)tranform;
@end

NS_ASSUME_NONNULL_END
