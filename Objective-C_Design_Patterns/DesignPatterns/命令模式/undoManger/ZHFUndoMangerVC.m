//
//  ZHFUndoMangerVC.m
//  Objective-C_Design_Patterns
//
//  Created by 周飞 on 2018/12/31.
//  Copyright © 2018年 周飞. All rights reserved.
//

#import "ZHFUndoMangerVC.h"

@interface ZHFUndoMangerVC ()
@property (nonatomic, strong) NSUndoManager *undoManager;
@end

@implementation ZHFUndoMangerVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self.undoManager registerUndoWithTarget:self handler:^(id  _Nonnull target) {
        NSLog(@"栈0");
    }];
    [self.undoManager setActionName:@"setActionName..."];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.undoManager undo];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
