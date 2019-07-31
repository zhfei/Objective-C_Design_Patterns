//
//  DPCompositeProtocol.h
//  Design_Patterns_Demoes
//
//  Created by 周飞 on 2019/7/30.
//  Copyright © 2019年 zhf. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreGraphics/CoreGraphics.h>

NS_ASSUME_NONNULL_BEGIN

@protocol DPCompositeProtocol <NSObject>
@property (nonatomic, assign) CGPoint location;

- (void)operation;
- (void)addComposite:(id<DPCompositeProtocol>)comp;
- (void)removeComposite:(id<DPCompositeProtocol>)comp;
- (id<DPCompositeProtocol>)getChild:(NSInteger)index;

@end

NS_ASSUME_NONNULL_END
