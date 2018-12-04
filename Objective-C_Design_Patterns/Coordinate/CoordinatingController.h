//
//  CoordinatingController.h
//  Objective-C_Design_Patterns
//
//  Created by zhoufei on 2018/10/2.
//  Copyright © 2018年 周飞. All rights reserved.
//
//  中介者，用来封装一组对象的交互逻辑

#import <Foundation/Foundation.h>
#import "CoordinateProtocol.h"
#import <Macro.h>

@class CanvasViewController;

@interface CoordinatingController : NSObject <CoordinateProtocol>
SingletonH(CoordinatingController)

- (CanvasViewController *)canvasViewController;

@end
