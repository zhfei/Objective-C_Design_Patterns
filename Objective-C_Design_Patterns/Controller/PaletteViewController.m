//
//  PaletteViewController.m
//  Objective-C_Design_Patterns
//
//  Created by zhoufei on 2018/10/4.
//  Copyright © 2018年 周飞. All rights reserved.
//
//  调色板控制器

#import "PaletteViewController.h"

@interface PaletteViewController ()
@property (weak, nonatomic) IBOutlet UIView *tempColor;
@property (weak, nonatomic) IBOutlet UISlider *sliderR;
@property (weak, nonatomic) IBOutlet UISlider *sliderG;
@property (weak, nonatomic) IBOutlet UISlider *sliderB;

@property (weak, nonatomic) IBOutlet UIView *smallCircle;
@property (weak, nonatomic) IBOutlet UIView *bigCircle;

@property (strong, nonatomic) UIView *lazyFalg;
@end

@implementation PaletteViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupTempColor];
    
}

- (void)viewDidLayoutSubviews {
    self.lazyFalg;
}

- (UIView *)lazyFalg {
    if (!_lazyFalg) {
        _lazyFalg = [UIView new];
        [self.smallCircle drawCenterCircle:5 color:self.tempColor.backgroundColor];
        [self.bigCircle drawCenterCircle:8 color:self.tempColor.backgroundColor];
    }
    return _lazyFalg;
}

- (IBAction)back:(UIBarButtonItem *)sender {
    [self performSegueWithIdentifier:@"fromPalette" sender:nil];
}
- (IBAction)sliderChangedAction:(UISlider *)sender {
    switch (sender.tag) {
        case 1:
        case 2:
        case 3:
        {
            [self setupTempColor];
        }
            break;
        case 4:
            
            break;
            
        default:
            break;
    }
}


- (void)setupTempColor {
    UIColor *temp = [UIColor colorWithRed:_sliderR.value/255.0 green:_sliderG.value/255.0 blue:_sliderB.value/255.0 alpha:1];
    self.tempColor.backgroundColor = temp;
    
    [(CAShapeLayer *)self.smallCircle.layer.sublayers[0] setFillColor:temp.CGColor];
    [(CAShapeLayer *)self.bigCircle.layer.sublayers[0] setFillColor:temp.CGColor];
    
    [GlobalConfig sharedGlobalConfig].lineColorHex = [UIColor hexStringFromColor:temp];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Incomplete implementation, return the number of sections
     return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of rows
    if (section == 0) {
        return 4;
    } else if (section == 1) {
        return 1;
    }
    return 0;
}


//- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
//    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
//    
//    // Configure the cell...
//    
//    return cell;
//}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
