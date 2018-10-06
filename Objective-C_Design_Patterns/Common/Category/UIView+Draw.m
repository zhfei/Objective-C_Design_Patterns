//
//  UIView+Draw.m
//  Objective-C_Design_Patterns
//
//  Created by zhoufei on 2018/10/6.
//  Copyright © 2018年 周飞. All rights reserved.
//

#import "UIView+Draw.h"

@implementation UIView (Draw)
- (void)drawCenterCircle:(CGFloat)radius color:(UIColor *)color {
    
//    CGContextRef context = UIGraphicsGetCurrentContext();
//
////    UIBezierPath *bezier = [UIBezierPath bezierPathWithArcCenter:CGPointMake(self.bounds.size.width*0.5, self.bounds.size.height*0.5) radius:radius startAngle:0 endAngle:M_PI*2 clockwise:NO];
//
//    UIBezierPath *bezier = [UIBezierPath bezierPathWithOvalInRect:self.bounds];
//    [bezier stroke];
    
//    CGContextAddPath(context, bezier.CGPath);
//    CGContextSetFillColorWithColor(context, [UIColor redColor].CGColor);
//    CGContextFillPath(context);
    
    
//    UIGraphicsBeginImageContextWithOptions(self.bounds.size, NO, 0);
//    //1.获得一个view相关的上下文
//    CGContextRef context = UIGraphicsGetCurrentContext();
//    //2.描述路径
//    UIBezierPath *path = [UIBezierPath bezierPath];
//    //2.1.设置起点
//    [path moveToPoint:CGPointMake(0, 0)];
//    //2.2.设置终点，和控制点
//    [path addQuadCurveToPoint:CGPointMake(10, 10) controlPoint:CGPointMake(4, 5)];
//    //3.把路径添加到上下文
//    CGContextAddPath(context, path.CGPath);
//    CGContextSetLineWidth(context, 2);
//    CGContextSetStrokeColorWithColor(context, [UIColor redColor].CGColor);
//    //4.把上下文的内容显示到view上  fill stroke
//    CGContextStrokePath(context);
    
//    CGContextSetFillColorWithColor(context, [UIColor redColor].CGColor);
//    CGContextFillEllipseInRect(context, self.bounds);
//
//    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
//    //5.关闭图片上下文
//    UIGraphicsEndImageContext();
//
//    self.layer.contents = image;
    
    //CGPointMake(self.bounds.size.width*0.5, self.bounds.size.height*0.5)
    UIBezierPath *bezier = [UIBezierPath bezierPathWithArcCenter:CGPointMake(self.bounds.size.width*0.5, self.bounds.size.height*0.5) radius:radius startAngle:0 endAngle:M_PI*2 clockwise:YES];
    
    CAShapeLayer *shape = [CAShapeLayer layer];
    shape.path = bezier.CGPath;
    shape.fillColor = color.CGColor;
    shape.frame = self.bounds;
    
    [self.layer addSublayer:shape];
    
}

@end
