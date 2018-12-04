//
//  ZHFSetStrokeColorCommandDelegate.h
//  Objective-C_Design_Patterns
//
//  Created by zhoufei on 2018/12/4.
//  Copyright © 2018年 周飞. All rights reserved.
//

#import <Foundation/Foundation.h>
@class ZHFSetStrokeColorCommand;

NS_ASSUME_NONNULL_BEGIN

@protocol ZHFSetStrokeColorCommandDelegate <NSObject>
- (void)command:(ZHFSetStrokeColorCommand *)command didRequestColorCompenentsForRed:(CGFloat *)red green:(CGFloat *)green blue:(CGFloat *)blue;
- (void)command:(ZHFSetStrokeColorCommand *)command didFinishedColorUpdateWithColor:(UIColor *)color;
@end

NS_ASSUME_NONNULL_END
