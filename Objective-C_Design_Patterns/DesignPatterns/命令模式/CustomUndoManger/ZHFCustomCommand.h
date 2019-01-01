//
//  ZHFCustomCommand.h
//  Objective-C_Design_Patterns
//
//  Created by 周飞 on 2019/1/1.
//  Copyright © 2019年 周飞. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ZHFCustomCommand : NSObject
{
    @protected
    NSDictionary *userInfo_;
}
@property (nonatomic, strong) NSDictionary *userInfo;
- (void)execute;
- (void)undo;
@end

NS_ASSUME_NONNULL_END
