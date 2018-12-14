//
//  Dot.m
//  Objective-C_Design_Patterns
//
//  Created by zhoufei on 2018/10/4.
//  Copyright © 2018年 周飞. All rights reserved.
//

#import "Dot.h"

@implementation Dot
@synthesize color,size;

- (void)drawWithContext:(CGContextRef)context {
    CGFloat x = self.location.x - self.size.width*0.5;
    CGFloat y = self.location.y - self.size.height*0.5;
    CGRect rect = CGRectMake(x, y, self.size.width, self.size.height);
    
    CGContextSetFillColorWithColor(context, [self.color CGColor]);
    CGContextFillEllipseInRect(context, rect);
}

- (id)copyWithZone:(NSZone *)zone {
    Dot *obj = [[[self class] alloc] initWithLocation:self.location];
    obj.color = [UIColor colorWithCGColor:self.color.CGColor];
    obj.size = self.size;
    return obj;
}

@end
