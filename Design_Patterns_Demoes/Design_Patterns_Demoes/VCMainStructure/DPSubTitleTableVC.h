//
//  DPSubTitleTableVC.h
//  Design_Patterns_Demoes
//
//  Created by 周飞 on 2019/3/30.
//  Copyright © 2019年 zhf. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DPMacro.h"

NS_ASSUME_NONNULL_BEGIN

@interface DPSubTitleTableVC : UITableViewController
- (instancetype)initWithDataSource:(NSArray *)dataSource type:(DPSubTitleTableType)type;
@end

NS_ASSUME_NONNULL_END
