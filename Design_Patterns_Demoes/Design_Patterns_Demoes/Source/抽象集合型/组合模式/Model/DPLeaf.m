//
//  DPLeaf.m
//  Design_Patterns_Demoes
//
//  Created by 周飞 on 2019/7/30.
//  Copyright © 2019年 zhf. All rights reserved.
//

#import "DPLeaf.h"

@implementation DPLeaf
@synthesize location = _location;

- (void)operation {
    NSLog(@"叶子结点操作...");
}
- (void)addComposite:(id<DPCompositeProtocol>)comp{}
- (void)removeComposite:(id<DPCompositeProtocol>)comp{}
- (id<DPCompositeProtocol>)getChild:(NSInteger)index{return nil;}

@end
