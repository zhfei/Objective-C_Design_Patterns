//
//  ThumbnailViewController.h
//  Objective-C_Design_Patterns
//
//  Created by zhoufei on 2018/10/4.
//  Copyright © 2018年 周飞. All rights reserved.
//
//  缩略图

#import <UIKit/UIKit.h>

typedef void(^CompletBlock)(NSInteger index);

@interface ThumbnailViewController : UICollectionViewController
@property (nonatomic, copy)CompletBlock block;
@end
