//
//  ZHFQRCodeView.h
//  Objective-C_Design_Patterns
//
//  Created by zhoufei on 2018/10/12.
//  Copyright © 2018年 周飞. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ZHFQRCodeView : UIView
+ (instancetype)viewWithFrame:(CGRect)frame;


+ (instancetype)viewWithFrame:(CGRect)frame
                   maskInsets:(UIEdgeInsets)maskInsets;

- (instancetype)initWithFrame:(CGRect)frame
                   maskInsets:(UIEdgeInsets)maskInsets;

+ (instancetype)viewWithFrame:(CGRect)frame
                   maskInsets:(UIEdgeInsets)maskInsets
                aniamtionType:(NSUInteger)animationType;

- (instancetype)initWithFrame:(CGRect)frame
                   maskInsets:(UIEdgeInsets)maskInsets
                aniamtionType:(NSUInteger)animationType;

+ (instancetype)viewWithFrame:(CGRect)frame
                   maskInsets:(UIEdgeInsets)maskInsets
                aniamtionType:(NSUInteger)animationType
                  cornerColor:(UIColor *)cornerColor;

- (instancetype)initWithFrame:(CGRect)frame
                   maskInsets:(UIEdgeInsets)maskInsets
                aniamtionType:(NSUInteger)animationType
                  cornerColor:(UIColor *)cornerColor;

/*!
 @brief  扫码成功回调
 @param  success 是否扫码成功
 @param  context 扫码内容(如果扫码成功,则返回对应码的内容,否则返回错误信息)
 */
@property (nonatomic,copy) void(^scanBlock)(BOOL success,NSString *context);

/**
 *  @brief 开始扫描
 */
- (void)startScan;

/**
 *  @brief 停止扫描
 */
- (void)stopScan;
@end
