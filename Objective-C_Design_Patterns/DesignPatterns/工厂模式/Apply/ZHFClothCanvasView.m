//
//  ZHFClothCanvasView.m
//  Objective-C_Design_Patterns
//
//  Created by 周飞 on 2018/11/18.
//  Copyright © 2018年 周飞. All rights reserved.
//

#import "ZHFClothCanvasView.h"

@implementation ZHFClothCanvasView
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
//        UIImageView *bg = [[UIImageView alloc] initWithFrame:frame];
//        bg.image = [UIImage imageNamed:@"Paper"];
//        bg.userInteractionEnabled = YES;
//        [self addSubview:bg];
        
        self.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"Paper"]];
        
//        CALayer *bgLayer = [CALayer new];
//        bgLayer.bounds = self.bounds;
//        bgLayer.contents = (__bridge id _Nullable)([UIImage imageNamed:@"Paper"].CGImage);
//        [self.layer insertSublayer:bgLayer atIndex:0];
        
//        self.layer.contents = (__bridge id _Nullable)([UIImage imageNamed:@"Paper"].CGImage);

        
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
