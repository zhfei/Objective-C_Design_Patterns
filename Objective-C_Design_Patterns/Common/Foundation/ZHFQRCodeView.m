//
//  ZHFQRCodeView.m
//  Objective-C_Design_Patterns
//
//  Created by zhoufei on 2018/10/12.
//  Copyright © 2018年 周飞. All rights reserved.
//

#import "ZHFQRCodeView.h"
#import <AVFoundation/AVFoundation.h>

@interface ZHFQRCodeView()<AVCaptureMetadataOutputObjectsDelegate>

@property (nonatomic,strong) AVCaptureSession           *session;
@property (nonatomic,strong) AVCaptureVideoPreviewLayer *previewLayer;

@end

@implementation ZHFQRCodeView{
    CALayer *_animationLayer;
    NSUInteger _animationType;
    UIEdgeInsets _maskInsets;
    UIColor *_cornerColor;
    CGFloat _cornerWidth;
    CGFloat _cornerLength;
    
    CALayer *_maskLeft;
    CALayer *_maskRight;
    CALayer *_maskTop;
    CALayer *_maskBottom;
    UILabel *_textLabel;
    CAShapeLayer *_borderLayer;
    CAShapeLayer *_cornerLayer;
    
}

+ (instancetype)viewWithFrame:(CGRect)frame{
    return [self viewWithFrame:frame maskInsets:(UIEdgeInsets){80,40,80,40}];
}

+ (instancetype)viewWithFrame:(CGRect)frame maskInsets:(UIEdgeInsets)maskInsets{
    return [self viewWithFrame:frame maskInsets:maskInsets aniamtionType:1];
}

+ (instancetype)viewWithFrame:(CGRect)frame maskInsets:(UIEdgeInsets)maskInsets aniamtionType:(NSUInteger)animationType{
    return [self viewWithFrame:frame maskInsets:maskInsets aniamtionType:animationType cornerColor:Color(25, 136, 222)];
}

+ (instancetype)viewWithFrame:(CGRect)frame maskInsets:(UIEdgeInsets)maskInsets aniamtionType:(NSUInteger)animationType cornerColor:(UIColor *)cornerColor{
    ZHFQRCodeView *view = [[ZHFQRCodeView alloc] initWithFrame:frame maskInsets:maskInsets aniamtionType:animationType cornerColor:cornerColor];
    return view;
}

- (instancetype)initWithFrame:(CGRect)frame{
    return [self initWithFrame:frame maskInsets:(UIEdgeInsets){80,40,80,40}];
}

- (instancetype)initWithFrame:(CGRect)frame maskInsets:(UIEdgeInsets)maskInsets{
    return [self initWithFrame:frame maskInsets:maskInsets aniamtionType:1];
}


- (instancetype)initWithFrame:(CGRect)frame maskInsets:(UIEdgeInsets)maskInsets aniamtionType:(NSUInteger)animationType{
    return [self initWithFrame:frame maskInsets:maskInsets aniamtionType:animationType cornerColor:Color(25, 136, 222)];
}

- (instancetype)initWithFrame:(CGRect)frame maskInsets:(UIEdgeInsets)maskInsets aniamtionType:(NSUInteger)animationType cornerColor:(UIColor *)cornerColor{
    
    self = [super initWithFrame:frame];
    if (self) {
        _maskInsets    = maskInsets;
        _animationType = animationType;
        _cornerColor   = cornerColor;
        _cornerWidth   = 6.f;
        _cornerLength  = 30.f;
        
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(statusBarOrientationChange:) name:UIApplicationDidChangeStatusBarOrientationNotification object:nil];
    }
    return self;
}


#pragma mark - Getter & Setter
- (AVCaptureSession *)session{
    if (!_session) {
        
        AVCaptureDevice *device = [AVCaptureDevice defaultDeviceWithMediaType:AVMediaTypeVideo];
        NSError *error;
        AVCaptureDeviceInput *input = [AVCaptureDeviceInput deviceInputWithDevice:device error:&error];
        if (!input) {
            return nil;
        }
        
        _session = [[AVCaptureSession alloc]init];
        [_session setSessionPreset:AVCaptureSessionPresetHigh];
        if ([_session canAddInput:input]){
            [_session addInput:input];
        }else{
            return nil;
        }
        
        AVCaptureMetadataOutput *output = [[AVCaptureMetadataOutput alloc]init];
        if ([_session canAddOutput:output]){
            [_session addOutput:output];
        }else{
            return nil;
        }
        
        [output setMetadataObjectsDelegate:self queue:dispatch_get_main_queue()];
        
        // 条码类型 AVMetadataObjectTypeQRCode
        if (([output.availableMetadataObjectTypes containsObject:AVMetadataObjectTypeQRCode]) ||
            ([output.availableMetadataObjectTypes
              containsObject:AVMetadataObjectTypeCode128Code])){
            output.metadataObjectTypes = @[
                                           AVMetadataObjectTypeQRCode,
                                           AVMetadataObjectTypeCode39Code,
                                           AVMetadataObjectTypeCode128Code,
                                           AVMetadataObjectTypeCode39Mod43Code,
                                           AVMetadataObjectTypeEAN13Code,
                                           AVMetadataObjectTypeEAN8Code,
                                           AVMetadataObjectTypeCode93Code];
        }
        _previewLayer = [AVCaptureVideoPreviewLayer layerWithSession:_session];
        _previewLayer.bounds = self.bounds;
        _previewLayer.anchorPoint = CGPointZero;
        _previewLayer.videoGravity = AVLayerVideoGravityResizeAspectFill;
        [self statusBarOrientationChange:nil];
        [self.layer insertSublayer:_previewLayer atIndex:0];
    }
    return _session;
}

- (void)addDecorateLayer{
    
    CGColorRef marginLayerColor = ColorA(0.2, 0.2, 0.2, 0.6).CGColor;
    CGSize size = self.bounds.size;
    CGFloat top    = _maskInsets.top;
    CGFloat left   = _maskInsets.left;
    CGFloat bottom = _maskInsets.bottom;
    CGFloat right  = _maskInsets.right;
    
    // 上下左右的遮罩
    {//上半部分遮罩
        [_maskTop removeFromSuperlayer];
        _maskTop = [CALayer layer];
        _maskTop.frame = (CGRect){CGPointZero,{size.width,top}};
        _maskTop.backgroundColor = marginLayerColor;
        [self.layer insertSublayer:_maskTop atIndex:66];
    }
    
    {//下半部分遮罩
        [_maskBottom removeFromSuperlayer];
        _maskBottom = [CALayer layer];
        _maskBottom.frame = (CGRect){{0,size.height-bottom},{size.width,bottom}};
        _maskBottom.backgroundColor = marginLayerColor;
        [self.layer insertSublayer:_maskBottom atIndex:66];
    }
    
    
    {//左半部分遮罩
        [_maskLeft removeFromSuperlayer];
        _maskLeft = [CALayer layer];
        _maskLeft.frame = (CGRect){{0,top},{left,size.height - top - bottom}};
        _maskLeft.backgroundColor = marginLayerColor;
        [self.layer insertSublayer:_maskLeft atIndex:66];
    }
    
    
    {//右半部分遮罩
        [_maskRight removeFromSuperlayer];
        _maskRight = [CALayer layer];
        _maskRight.frame = (CGRect){{size.width-right,top},{right,size.height - top -bottom}};
        _maskRight.backgroundColor = marginLayerColor;
        [self.layer insertSublayer:_maskRight atIndex:66];
    }
    
    
#pragma mark 提示内容
    {
        [_textLabel removeFromSuperview];
        NSString *tips = @"将取景框对准\n\n二维码识别即可自动扫描识别";
        _textLabel = [[UILabel alloc] init];
        _textLabel.numberOfLines = 0;
        _textLabel.font = [UIFont boldSystemFontOfSize:14];
        _textLabel.text = tips;
        _textLabel.textColor = [UIColor whiteColor];
        
        _textLabel.backgroundColor = [UIColor clearColor];
        _textLabel.textAlignment = NSTextAlignmentCenter;
        
        CGSize labelSize = [tips sizeWithAttributes:@{NSFontAttributeName:_textLabel.font}];
        
        _textLabel.frame = (CGRect){(size.width-labelSize.width)/2,top-labelSize.height-8-_cornerWidth,labelSize};
        
        [self addSubview:_textLabel];
    }
    
#pragma mark 扫描区域的四个拐角
    {
        
        [_borderLayer removeFromSuperlayer];
        CGFloat delta = _cornerWidth/2;
        //透明边框
        _borderLayer = [CAShapeLayer layer];
        _borderLayer.anchorPoint = CGPointZero;
        _borderLayer.strokeColor = ColorA(0.8, 0.8, 0.8, 0.4).CGColor;
        _borderLayer.fillColor   = [UIColor clearColor].CGColor;
        _borderLayer.lineWidth   = _cornerWidth;
        
        UIBezierPath *boardPath  = [UIBezierPath bezierPathWithRect:CGRectMake(left+delta, top+delta, size.width-left-right-2*delta, size.height-top-bottom-2*delta)];
        _borderLayer.path = boardPath.CGPath;
        [self.layer insertSublayer:_borderLayer atIndex:99];
        
        //四个拐角
        [_cornerLayer removeFromSuperlayer];
        _cornerLayer = [CAShapeLayer layer];
        _cornerLayer.strokeColor = _cornerColor.CGColor;
        _cornerLayer.lineWidth   = _cornerWidth - 0.5;
        _cornerLayer.fillColor   = [UIColor clearColor].CGColor;
        UIBezierPath *cornerPath = [UIBezierPath bezierPath];
        
        delta = (_cornerWidth-0.5)/2;
        
        //左上角
        CGFloat currentX = left + delta;
        CGFloat currentY = top + _cornerLength;
        [cornerPath moveToPoint:(CGPoint){currentX,currentY}];
        currentY = top + delta;
        [cornerPath addLineToPoint:(CGPoint){currentX,currentY}];
        currentX = left + _cornerLength;
        [cornerPath addLineToPoint:(CGPoint){currentX,currentY}];
        
        //右上角
        currentX = size.width - right - _cornerLength;
        [cornerPath moveToPoint:(CGPoint){currentX,currentY}];
        currentX = size.width - right - delta;
        [cornerPath addLineToPoint:(CGPoint){currentX,currentY}];
        currentY = top + _cornerLength;
        [cornerPath addLineToPoint:(CGPoint){currentX,currentY}];
        
        //右下角
        currentY = size.height - bottom - _cornerLength;
        [cornerPath moveToPoint:(CGPoint){currentX,currentY}];
        currentY = size.height - bottom - delta;
        [cornerPath addLineToPoint:(CGPoint){currentX,currentY}];
        currentX = size.width - right - _cornerLength;
        [cornerPath addLineToPoint:(CGPoint){currentX,currentY}];
        
        //左下角
        currentX = left + _cornerLength;
        [cornerPath moveToPoint:(CGPoint){currentX,currentY}];
        currentX = left + delta;
        [cornerPath addLineToPoint:(CGPoint){currentX,currentY}];
        currentY = size.height - bottom - _cornerLength;
        [cornerPath addLineToPoint:(CGPoint){currentX,currentY}];
        
        _cornerLayer.path = cornerPath.CGPath;
        [self.layer insertSublayer:_cornerLayer atIndex:99];
    }
}

- (void)layoutSubviews{
    [super layoutSubviews];
    
    AVAuthorizationStatus authStatus = [AVCaptureDevice authorizationStatusForMediaType:AVMediaTypeVideo];
    if(authStatus == AVAuthorizationStatusRestricted || authStatus == AVAuthorizationStatusDenied){
        static NSString *errorTips =  @"请在系统设置-隐私-相机里面把本应用程序对应的开关打开后才能使用扫描功能";
        if (self.scanBlock) {
            self.scanBlock(NO,errorTips);
        }
        _session = nil;
        if (_previewLayer) {
            [_previewLayer removeFromSuperlayer];
        }
        _previewLayer = nil;
        return;
    }
    
    [self addDecorateLayer];
    
    if (_animationLayer) {
        [_animationLayer removeAllAnimations];
        [_animationLayer removeFromSuperlayer];
    }
    
    CGSize size = self.bounds.size;
    CGFloat top    = _maskInsets.top;
    CGFloat left   = _maskInsets.left;
    CGFloat bottom = _maskInsets.bottom;
    CGFloat right  = _maskInsets.right;
#pragma mark 扫描动画
    CALayer *animationLayer = [CALayer layer];
    animationLayer.anchorPoint = CGPointZero;
    
    CABasicAnimation *animation;
    if (_animationType == 0) {
        //往复运动的扫描线
        animationLayer.frame = CGRectMake(left + 3,top + 10,size.width - left-right - 6,2);
        animationLayer.contents = (id)[UIImage imageNamed:@"scan_line"].CGImage;
        animation = [CABasicAnimation animationWithKeyPath:@"position.y"];
        animation.toValue = @(size.height - 20 - bottom);
        animation.autoreverses = YES;
    }else{
        //重复从上住下的扫描网
        animationLayer.frame = CGRectMake(left,top, size.width - left - right, 0);
        animationLayer.contents = (id)[UIImage imageNamed:@"scan_net"].CGImage;
        
        animation = [CABasicAnimation animationWithKeyPath:@"bounds.size.height"];
        animation.fromValue    = @(0);
        animation.toValue      = @(size.height - top -bottom);
    }
    animation.repeatCount  = CGFLOAT_MAX;
    animation.duration     = 2;
    [animationLayer addAnimation:animation forKey:@"scanAnimation"];
    [self.layer insertSublayer:animationLayer atIndex:99];
    _animationLayer = animationLayer;
}


#pragma mark - Action
- (void)startScan{
    [self.session startRunning];
}

- (void)stopScan{
    if ([_session isRunning]) {
        [_session stopRunning];
    }
}


#pragma mark - AVCaptureMetadataOutputObjectsDelegate
- (void)captureOutput:(AVCaptureOutput *)captureOutput didOutputMetadataObjects:(NSArray *)metadataObjects fromConnection:(AVCaptureConnection *)connection{
    
    if ([metadataObjects count] > 0){
        AVMetadataMachineReadableCodeObject * metadataObject = [metadataObjects firstObject];
        [self stopScan];
        if (self.scanBlock) {
            self.scanBlock(YES,metadataObject.stringValue);
        }
        return;
    }
}

#pragma mark - 屏幕旋转Orientation
- (void)statusBarOrientationChange:(NSNotification *)notification{
    if (!_previewLayer) {
        return;
    }
    UIInterfaceOrientation orientation = [[UIApplication sharedApplication] statusBarOrientation];
    [CATransaction begin];
    [CATransaction setAnimationDuration: 0.80000000000000004];
    if (orientation == UIInterfaceOrientationLandscapeRight) {
        
        _previewLayer.connection.videoOrientation = AVCaptureVideoOrientationLandscapeRight;
        
    }else if (orientation == UIInterfaceOrientationLandscapeLeft){
        _previewLayer.connection.videoOrientation = AVCaptureVideoOrientationLandscapeLeft;
        
    }else if (orientation == UIDeviceOrientationPortrait){
        _previewLayer.connection.videoOrientation = AVCaptureVideoOrientationPortrait;
        
    }else if (orientation == UIDeviceOrientationPortraitUpsideDown){
        _previewLayer.connection.videoOrientation = AVCaptureVideoOrientationPortraitUpsideDown;
    }
    [CATransaction commit];
}

#pragma mark - Dealloc

- (void)dealloc {
    [self stopScan];
    _previewLayer = nil;
    _session      = nil;
    [_animationLayer removeAllAnimations];
    _animationLayer = nil;
    [[NSNotificationCenter defaultCenter] removeObserver:self name:UIApplicationDidChangeStatusBarOrientationNotification object:nil];
}

@end
