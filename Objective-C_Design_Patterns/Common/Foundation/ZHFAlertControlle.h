//
//  ZHFAlertControlle.h
//  Objective-C_Design_Patterns
//
//  Created by zhoufei on 2018/10/11.
//  Copyright © 2018年 周飞. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ZHFAlertControlle : UIAlertController
+ (instancetype _Nonnull)initWithTitle:(NSString * __nullable)title
                               message:(NSString * __nullable)message
                             btn1Title:(NSString * __nullable)btn1Title
                            btn1Handle:(void (^ __nullable)(UIAlertAction * __nullable action))btn1Handle
                             btn2Title:(NSString * __nullable)btn2Title
                            btn2Handle:(void (^ __nullable)(UIAlertAction * __nullable action))btn2Handle;

+ (void)showWithTitle:(NSString * __nullable)title
                               message:(NSString * __nullable)message
                             btn1Title:(NSString * __nullable)btn1Title
                            btn1Handle:(void (^ __nullable)(UIAlertAction * __nullable action))btn1Handle;

- (void)showAlertVC;
@end
