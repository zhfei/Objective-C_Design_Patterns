//
//  ZHFProgressHUD.h
//  Objective-C_Design_Patterns
//
//  Created by zhoufei on 2018/10/11.
//  Copyright © 2018年 周飞. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ZHFProgressHUD : NSObject
/**
 *  出错提示
 *
 *  @param errorMessage 错误信息
 */
+ (void)popupErrorMessage:(NSString *)errorMessage;

/**
 *  成功提示
 *
 *  @param successMessage 成功信息
 */
+ (void)popupSuccessMessage:(NSString *)successMessage;
/**
 *  成功提示
 *
 *  @param successMessage  成功信息
 *  @param completionBlock 弹框消失后回调block
 */
+ (void)popupSuccessMessage:(NSString *)successMessage completionBlock:(void(^)())completionBlock;

/**
 *  警告提示
 *
 *  @param warningMessage 警告信息
 */
+ (void)popupWarningMessage:(NSString *)warningMessage;
/**
 *  弹出过程信息
 *
 *  @param message 信息
 */
+ (void)popupMessage:(NSString *)message;

/**
 *  关闭提示 使用动画
 */
+ (void)dismissMessage;
/**
 *  @brief 关闭提示
 *  @param delay 延时
 */
+ (void)dismissMessageAfterDelay:(CGFloat)delay;
/**
 *   关闭提示
 *
 *  @param animated 是否使用动画
 */
+ (void)dismissAnimated:(BOOL)animated;

/**
 *   Toast提示
 *
 *  @param message 信息
 */
+ (void)popToastMessage:(NSString *)message;
/*!
 *
 *  @brief Description 持续展示提示信息(eg.下载百分比提示)
 *
 *  @param message 信息
 */
+ (void)message:(NSString *)message;
@end
