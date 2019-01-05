//
//  ZHFFlowerFactory.m
//  Objective-C_Design_Patterns
//
//  Created by 周飞 on 2019/1/4.
//  Copyright © 2019年 周飞. All rights reserved.
//

#import "ZHFFlowerFactory.h"
#import "ZHFFlowerView.h"

@implementation ZHFFlowerFactory
SingletonM(ZHFFlowerFactory)
- (UIView *)flowerViewWithType:(ZHFFlowerViewType)type {
    if (pool_ == nil) {
        pool_ = @{}.mutableCopy;
    }
    
    ZHFFlowerView *flower = [pool_ objectForKey:@(type)];
    if (flower == nil) {
        NSString *imageName = @"";
        switch (type) {
            case ZHFFlowerViewTypeAnemone:
                imageName = @"flower1";
                break;
            case ZHFFlowerViewTypeCosmos:
                imageName = @"flower2";
                break;
            case ZHFFlowerViewTypeGerberas:
                imageName = @"flower3";
                break;
            case ZHFFlowerViewTypeHellyhock:
                imageName = @"flower4";
                break;
            case ZHFFlowerViewTypeJasmine:
                imageName = @"flower5";
                break;
            case ZHFFlowerViewTypeZinnia:
                imageName = @"flower6";
                break;
            default:
                imageName = @"flower6";
                break;
        }
        flower = [[ZHFFlowerView alloc] initWithImage:[UIImage imageNamed:imageName]];
        [pool_ setObject:flower forKey:@(type)];
    }
    return flower;
}
@end
