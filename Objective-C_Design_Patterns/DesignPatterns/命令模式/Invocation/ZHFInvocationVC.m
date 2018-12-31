//
//  ZHFInvocationVC.m
//  Objective-C_Design_Patterns
//
//  Created by 周飞 on 2018/12/31.
//  Copyright © 2018年 周飞. All rights reserved.
//

#import "ZHFInvocationVC.h"

@interface ZHFInvocationVC ()

@end

@implementation ZHFInvocationVC
#pragma mark - Life Cycle
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
}


#pragma mark - Getter, Setter

#pragma mark - Event

#pragma mark - Public Method

#pragma mark - Private Method
- (void)setupUI {
    NSMethodSignature *signature = [ZHFInvocationVC instanceMethodSignatureForSelector:@selector(invocationMethod:)];
    //此时我们应该判断方法是否存在，如果不存在这抛出异常
    if (signature == nil) {
        //aSelector为传进来的方法
        NSString *info = [NSString stringWithFormat:@"%@方法找不到", NSStringFromSelector(@selector(invocationMethod:))];
        [NSException raise:@"方法调用出现异常" format:info, nil];
    }
    
    
    NSInvocation *invocation = [NSInvocation invocationWithMethodSignature:signature];
    invocation.target = self;
    invocation.selector = @selector(invocationMethod:);
    
    NSString *param = @"参数2";
    //参数位置
    //0:self, 1:_cmd
    [invocation setArgument:&param atIndex:2];
    [invocation invoke];
    
    
    id res = nil;
    if (signature.methodReturnLength != 0) {//有返回值
        //将返回值赋值给res
        [invocation getReturnValue:&res];
    }
}

- (void)invocationMethod:(NSString *)param {
    NSLog(@"param:%@",param);
}


#pragma mark - Delegate

#pragma mark - NSCopying

#pragma mark - NSObject

@end
