//
//  ZHFAlertControlle.m
//  Objective-C_Design_Patterns
//
//  Created by zhoufei on 2018/10/11.
//  Copyright © 2018年 周飞. All rights reserved.
//

#import "ZHFAlertControlle.h"
#import "ZHFTopWindow.h"

@interface ZHFAlertControlle ()

@end

@implementation ZHFAlertControlle
+ (instancetype)initWithTitle:(NSString *)title
                      message:(NSString *)message
                    btn1Title:(NSString *)btn1Title
                   btn1Handle:(void (^ __nullable)(UIAlertAction *action))btn1Handle
                    btn2Title:(NSString *)btn2Title
                   btn2Handle:(void (^ __nullable)(UIAlertAction *action))btn2Handle {
    ZHFAlertControlle *alertVC = [ZHFAlertControlle alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
    
    if (btn1Title) {
        UIAlertAction *btnAction = [UIAlertAction actionWithTitle:btn1Title style:UIAlertActionStyleDestructive handler:[self addAlertHandler:btn1Handle]];
        [alertVC addAction:btnAction];
    }
    
    if (btn2Title) {
        UIAlertAction *btnAction = [UIAlertAction actionWithTitle:btn2Title style:UIAlertActionStyleCancel handler:[self addAlertHandler:btn2Handle]];
        [alertVC addAction:btnAction];
    }
    
    return alertVC;
}

+ (void)showWithTitle:(NSString * __nullable)title
              message:(NSString * __nullable)message
            btn1Title:(NSString * __nullable)btn1Title
           btn1Handle:(void (^ __nullable)(UIAlertAction * __nullable action))btn1Handle {
    ZHFAlertControlle *alertVC = [ZHFAlertControlle alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
    
    if (btn1Title) {
        UIAlertAction *btnAction = [UIAlertAction actionWithTitle:btn1Title style:UIAlertActionStyleDestructive handler:[self addAlertHandler:btn1Handle]];
        [alertVC addAction:btnAction];
    }
    
    [alertVC showAlertVC];
}

+ (void(^)(id p))addAlertHandler:(void (^ __nullable)(UIAlertAction *action))handler {
    return (^(id p) {
        if (handler) {
            handler(nil);
        }
    });
}

- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
    [ZHFTopWindow sharedZHFTopWindow].hidden = YES;
}

- (void)showAlertVC {
    ZHFTopWindow *window = [ZHFTopWindow sharedZHFTopWindow];
    window.hidden = NO;
    [window makeKeyAndVisible];
    [window.rootViewController presentViewController:self animated:YES completion:nil];
}



@end
