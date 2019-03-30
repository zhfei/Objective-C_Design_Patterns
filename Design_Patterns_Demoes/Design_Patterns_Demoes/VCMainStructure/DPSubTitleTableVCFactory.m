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
            
        default:
            break;
    }
    DPSubTitleTableVC *subTable = [[DPSubTitleTableVC alloc] initWithDataSource:dataSource];

    return subTable;
}
@end
