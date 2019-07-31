//
//  DPMainTableVC.m
//  Design_Patterns_Demoes
//
//  Created by 周飞 on 2019/3/29.
//  Copyright © 2019年 zhf. All rights reserved.
//

#import "DPMainTableVC.h"
#import "DPMainTableViewModel.h"
#import "DPSubTitleTableVCFactory.h"

static NSString *cellID =@"myCell";

@interface DPMainTableVC ()
@property (nonatomic, strong) NSArray *dataSource;
@end

@implementation DPMainTableVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self addUI];
    [self setupUI];
    [self setupLayout];
    [self setupData];

}

#pragma mark - Life Cycle

#pragma mark - Getter, Setter

#pragma mark - Event

#pragma mark - Public Method

#pragma mark - Private Method


- (void)addUI {

}

- (void)setupUI {
    self.view.backgroundColor = [UIColor whiteColor];
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:cellID];
    [self.tableView setRowHeight:50];
    self.title = @"21 种设计模式";
}

- (void)setupLayout {
    
}

- (void)setupData {
    self.dataSource = mainDataSource();

}


#pragma mark - Delegate
#pragma mark  Table view data source
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    return 0.01;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataSource.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID forIndexPath:indexPath];
    
    cell.textLabel.text = self.dataSource[indexPath.row];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    switch (indexPath.row) {
        case 0:
        {
            DPSubTitleTableVC *subTable = [DPSubTitleTableVCFactory subTitleTableVC:DPSubTitleTableCreateType];
            [self.navigationController pushViewController:subTable animated:YES];
            
        }
            break;
        case 2:
        {
            DPSubTitleTableVC *subTable = [DPSubTitleTableVCFactory subTitleTableVC:DPSubTitleTableAbstractType];
            [self.navigationController pushViewController:subTable animated:YES];
            
        }
            break;

        case 3:
        {
            DPSubTitleTableVC *subTable = [DPSubTitleTableVCFactory subTitleTableVC:DPSubTitleTablePerformanceType];
            [self.navigationController pushViewController:subTable animated:YES];
            
        }
            break;
        case 5:
        {
            DPSubTitleTableVC *subTable = [DPSubTitleTableVCFactory subTitleTableVC:DPSubTitleTableActionExtendType];
            [self.navigationController pushViewController:subTable animated:YES];
            
        }
            break;
        case 6:
        {
            DPSubTitleTableVC *subTable = [DPSubTitleTableVCFactory subTitleTableVC:DPSubTitleTableActionArithmeticType];
            [self.navigationController pushViewController:subTable animated:YES];
            
        }
            break;
            
        default:
            break;
    }
    
}
#pragma mark - NSCopying

#pragma mark - NSObject


@end
