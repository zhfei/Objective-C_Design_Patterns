//
//  DPPaperCanvasView.m
//  Design_Patterns_Demoes
//
//  Created by 周飞 on 2019/4/6.
//  Copyright © 2019年 zhf. All rights reserved.
//

#import "DPPaperCanvasView.h"

@interface DPPaperCanvasView ()
@property (nonatomic, strong) UILabel *title;
@end

@implementation DPPaperCanvasView
- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        //添加Paper类型纹理
        [self addSubview:self.title];
        [self.title setFrame:frame];
    }
    return self;
}

- (UILabel *)title {
    if (!_title) {
        UILabel *label = [UILabel new];
        label.text = @"布料画板";
        label.textColor = [UIColor whiteColor];
        label.textAlignment = NSTextAlignmentCenter;
        label.font = [UIFont systemFontOfSize:16];
        _title = label;
    }
    return _title;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
