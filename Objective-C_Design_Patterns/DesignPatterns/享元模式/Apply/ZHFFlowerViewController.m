//
//  ZHFFlowerViewController.m
//  Objective-C_Design_Patterns
//
//  Created by 周飞 on 2019/1/5.
//  Copyright © 2019年 周飞. All rights reserved.
//

#import "ZHFFlowerViewController.h"
#import "ZHFFlowerFactory.h"
#import "ZHFFlyweightView.h"
#import "ExtrFlowerStateModel.h"


@interface ZHFFlowerViewController ()
@property (nonatomic, strong) ZHFFlyweightView *fwView;
@property (nonatomic, strong) NSMutableArray *flowerList;
@end

@implementation ZHFFlowerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    CGFloat widthS = [UIScreen mainScreen].bounds.size.width;
    CGFloat heightS = [UIScreen mainScreen].bounds.size.height;
    
    self.fwView= [ZHFFlyweightView new];
    self.fwView.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.fwView];
    self.fwView.frame = CGRectMake(0, 0, widthS, heightS);
    

    NSMutableArray *flowerList = @[].mutableCopy;
    CGFloat maxSize = 50;
    CGFloat minSize = 10;
    
    for (int i = 0; i < 500; i++) {
        ZHFFlowerViewType type = arc4random() % ZHFFlowerViewTypeTotalNums;
        
        CGFloat xF = arc4random() % (NSInteger)widthS;
        CGFloat yF = arc4random() % (NSInteger)heightS;
        CGFloat widthF = (arc4random() % (NSInteger)(widthS - xF));
        CGFloat heightF = (arc4random() % (NSInteger)(heightS - yF));
        widthF = widthF > maxSize ? maxSize : (widthF < minSize ? minSize : widthF);
        heightF = heightF > maxSize ? maxSize : (heightF < minSize ? minSize : heightF);
        
        ExtrFlowerStateModel *model = [ExtrFlowerStateModel new];
        model.flowerView = [[ZHFFlowerFactory sharedZHFFlowerFactory] flowerViewWithType:type];
        model.area = CGRectMake(xF, yF, widthF, heightF);
//        NSValue *value = [NSValue value:&state withObjCType: @encode(ExtrFlowerState)];
        [flowerList addObject:model];
    }
    self.flowerList = flowerList;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.fwView  setFlowerList:self.flowerList];
}



@end
