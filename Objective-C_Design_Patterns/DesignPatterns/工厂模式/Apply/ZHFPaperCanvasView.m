//
//  ZHFPaperCanvasView.m
//  Objective-C_Design_Patterns
//
//  Created by 周飞 on 2018/11/18.
//  Copyright © 2018年 周飞. All rights reserved.
//

#import "ZHFPaperCanvasView.h"

@implementation ZHFPaperCanvasView
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        UIImageView *bg = [[UIImageView alloc] initWithFrame:frame];
        bg.image = [UIImage imageNamed:@"Cloth"];
        bg.userInteractionEnabled = YES;
        [self addSubview:bg];
    }
    return self;
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
