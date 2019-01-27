//
//  ZHFScribbleManager.h
//  Objective-C_Design_Patterns
//
//  Created by 周飞 on 2018/12/8.
//  Copyright © 2018年 周飞. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ZHFScribble.h"
#import "ZHFScribbleThumbnail.h"
#import "ZHFScribbleThumbnailProxy.h"
#import <BottomComponentLib/Macro.h>

NS_ASSUME_NONNULL_BEGIN

typedef void(^CompleteBlock)(NSArray *pictures);

@interface ZHFScribbleManager : NSObject
SingletonH(ZHFScribbleManager)
/**
 保存涂鸦数据，涂鸦截图到本地

 @param scrbble 涂鸦数据
 @param image 涂鸦截图
 */
- (void)saveScribble:(ZHFScribble *)scrbble thumbnail:(UIImage *)image;

- (NSInteger)numberOfScribbles;
- (ZHFScribble *)scribbleAtIndex:(NSInteger)index;
- (ZHFScribbleThumbnail *)scribbleThumbnailAtIndex:(NSInteger)index;
- (void)thumbnails:(CompleteBlock)block;
@end

NS_ASSUME_NONNULL_END
