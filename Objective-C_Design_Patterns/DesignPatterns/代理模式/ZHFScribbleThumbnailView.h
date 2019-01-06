//
//  ZHFScribbleThumbnailView.h
//  Objective-C_Design_Patterns
//
//  Created by 周飞 on 2019/1/6.
//  Copyright © 2019年 周飞. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ZHFScribbleThumbnailView : UIView
@property (nonatomic, strong, readonly) UIImage *image;
@property (nonatomic, copy) NSString *imagePath;
@end

NS_ASSUME_NONNULL_END
