//
//  Mark.h
//  Design_Patterns_Demoes
//
//  Created by 周飞 on 2019/3/31.
//  Copyright © 2019年 zhf. All rights reserved.
//
//  涂鸦痕迹的标示

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol Mark <NSObject>
@property (nonatomic, assign) CGSize size;
@property (nonatomic, strong) UIColor *color;
@property (nonatomic, assign) CGPoint location;

- (void)addMark:(id<Mark>)mark;
- (void)removeMark:(id<Mark>)mark;
@end

NS_ASSUME_NONNULL_END
