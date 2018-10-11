//
//  UIButton+ZHFShortCut.m
//  Objective-C_Design_Patterns
//
//  Created by zhoufei on 2018/10/11.
//  Copyright © 2018年 周飞. All rights reserved.
//

#import "UIButton+ZHFShortCut.h"
#import <objc/runtime.h>

@interface ButtonBlockTarget : NSObject
@property (nonatomic, assign) double lastClickTime;
@property (nonatomic, copy) void (^block)(UIButton * button);

- (id)initWithBlock:(void (^)(UIButton * button))block;
@end

@implementation ButtonBlockTarget
- (id)initWithBlock:(void (^)(UIButton * button))block {
    self = [super init];
    if (self) {
        self.block = block;
    }
    return self;
}
- (void)action:(UIButton *)button {
    if (self.block) {
        //1.0s内 重复点击 不会触发事件
        if ((CFAbsoluteTimeGetCurrent() - self.lastClickTime)<1.0) {
            return;
        }
        self.lastClickTime = CFAbsoluteTimeGetCurrent();
        self.block(button);
    }
}

@end

static const int addForTouchUp_block_key;
@implementation UIButton (ZHFShortCut)
+ (instancetype)shortCutButtonWithFrame:(CGRect)frame title:(NSString *)title TapAction:(TapBlock)tapBlock {
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeSystem];
    btn.frame = frame;
    [btn setTitle:title forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn setBackgroundColor:[UIColor whiteColor]];
    btn.titleLabel.font = FontWithSize(16);
    [btn addTouchUpInsideBlock:tapBlock];
    return btn;
}

- (void)addTouchUpInsideBlock:(void (^)(UIButton *))block {
    if (!block) return;
    [self._targets removeAllObjects];
    ButtonBlockTarget *target = [[ButtonBlockTarget alloc]initWithBlock:block];
    [self addTarget:target action:@selector(action:) forControlEvents:UIControlEventTouchUpInside];
    [self._targets addObject:target];
}

-(NSMutableArray *)_targets {
    NSMutableArray *targets = objc_getAssociatedObject(self, &addForTouchUp_block_key);
    if (!targets) {
        targets = [NSMutableArray new];
        objc_setAssociatedObject(self, &addForTouchUp_block_key, targets, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    return targets;
}

- (void)verticalImageAndTitle {
    CGSize imageSize = self.imageView.frame.size;
    CGSize titleSize = self.titleLabel.frame.size;
    NSDictionary *attributes = @{NSFontAttributeName: self.titleLabel.font};
    
    CGSize textSize = [self.titleLabel.text sizeWithAttributes:attributes];
    CGSize frameSize = CGSizeMake(ceilf(textSize.width), ceilf(textSize.height));
    if (titleSize.width + 0.5 < frameSize.width) {
        titleSize.width = frameSize.width;
    }
    CGFloat totalHeight = (imageSize.height + titleSize.height + 5);
    self.imageEdgeInsets = UIEdgeInsetsMake(- (totalHeight - imageSize.height), 0.0, 0.0, - titleSize.width);
    self.titleEdgeInsets = UIEdgeInsetsMake(0, - imageSize.width, - (totalHeight - titleSize.height), 0);
}
@end
