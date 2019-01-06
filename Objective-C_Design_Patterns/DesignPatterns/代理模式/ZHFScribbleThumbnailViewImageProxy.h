//
//  ZHFScribbleThumbnailViewImageProxy.h
//  Objective-C_Design_Patterns
//
//  Created by 周飞 on 2019/1/6.
//  Copyright © 2019年 周飞. All rights reserved.
//

#import "ZHFScribbleThumbnailView.h"

NS_ASSUME_NONNULL_BEGIN

@interface ZHFScribbleThumbnailViewImageProxy : ZHFScribbleThumbnailView
{
    @private
    UIImage *realImage_;
    BOOL loadingThreadHasLaunched_;
}
@end

NS_ASSUME_NONNULL_END
