//
//  MementoModel.h
//  Objective-C_Design_Patterns
//
//  Created by 周飞 on 2018/11/1.
//  Copyright © 2018年 周飞. All rights reserved.
//
//  备忘录模式

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface MarkMementoModel : NSObject
@property (nonatomic, copy) NSString *colorHexState;
@property (nonatomic, assign) CGSize sizeState;
@property (nonatomic, assign) CGPoint locationState;
+ (instancetype)mementoModel:(UIColor *)color size:(CGSize)size location:(CGPoint)location;
@end


@interface ScrawlMementoModel : NSObject
@property (nonatomic, copy) NSString *scrawState;
+ (instancetype)mementoModel:(NSString *)scrawState;

@end

NS_ASSUME_NONNULL_END
