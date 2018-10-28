//
//  CoordinateProtocol.h
//  Objective-C_Design_Patterns
//
//  Created by 周飞 on 2018/10/28.
//  Copyright © 2018年 周飞. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol CoordinateProtocol <NSObject>
- (void)presentStoryBoardVC:(NSString *)storyBoardID;
- (void)presentVC:(UIViewController *)targetVC;
- (void)presentStoryBoardVC:(NSString *)storyBoardID storyBoardName:(NSString *)name;
- (UIViewController *)storyBoardVC:(NSString *)storyBoardID;
@end

NS_ASSUME_NONNULL_END
