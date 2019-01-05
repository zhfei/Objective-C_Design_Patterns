//
//  ZHFFlowerFactory.m
//  Objective-C_Design_Patterns
//
//  Created by 周飞 on 2019/1/4.
//  Copyright © 2019年 周飞. All rights reserved.
//

#import "ZHFFlowerFactory.h"
#import "ZHFFlowerView.h"

@interface ZHFFlowerFactory ()
@property (nonatomic, strong) NSMutableDictionary *pool;
@end

@implementation ZHFFlowerFactory
SingletonM(ZHFFlowerFactory)
- (NSMutableDictionary *)pool {
    if (_pool == nil) {
        _pool = [NSMutableDictionary dictionary];
    }
    return _pool;
}

- (UIView *)flowerViewWithType:(ZHFFlowerViewType)type {
    ZHFFlowerView *flower = [self.pool objectForKey:@(type)];
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
                NSLog(@"error.....%d",type);
                imageName = @"flower6";
                break;
        }
        flower = [[ZHFFlowerView alloc] initWithImage:[UIImage imageNamed:imageName]];
        [self.pool setObject:flower forKey:@(type)];
        NSLog(@"创建对象类型:%d----flower:%@",type,flower);
    } else {
        NSLog(@"获取对象类型:%d----flower:%@",type,flower);
    }
    return flower;
}
@end
