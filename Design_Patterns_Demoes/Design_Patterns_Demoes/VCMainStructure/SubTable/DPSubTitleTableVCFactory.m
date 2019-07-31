//
//  DPSubTitleTableVCFactory.m
//  Design_Patterns_Demoes
//
//  Created by 周飞 on 2019/3/30.
//  Copyright © 2019年 zhf. All rights reserved.
//

#import "DPSubTitleTableVCFactory.h"
#import "DPSubTitleTableViewModel.h"

@implementation DPSubTitleTableVCFactory
+ (DPSubTitleTableVC *)subTitleTableVC:(DPSubTitleTableType)type {
    
    NSArray *dataSource;
    
    switch (type) {
        case DPSubTitleTableCreateType:
        {
            dataSource = createTypeDataSource();
        }
            break;
        case DPSubTitleTablePerformanceType:
        {
            dataSource = createPerformanceTypeDataSource();
        }
            break;
        case DPSubTitleTableActionExtendType:
        {
            dataSource = actionExtendTypeDataSource();
        }
            break;
        case DPSubTitleTableActionArithmeticType:
        {
            dataSource = arithmeticTypeDataSource();
        }
            break;
        case DPSubTitleTableAbstractType:
        {
            dataSource = abstractTypeDataSource();
        }
            break;

        default:
            break;
    }
    DPSubTitleTableVC *subTable = [[DPSubTitleTableVC alloc] initWithDataSource:dataSource type:type];

    return subTable;
}
@end
