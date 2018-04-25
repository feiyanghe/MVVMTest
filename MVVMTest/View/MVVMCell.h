//
//  MVVMCell.h
//  MVVMTest
//
//  Created by feiyanghe on 2018/4/25.
//  Copyright © 2018年 feiyanghe. All rights reserved.
//

#import <UIKit/UIKit.h>
@class MVVMCellModel;
@interface MVVMCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *icon;
@property (weak, nonatomic) IBOutlet UILabel *title;
@property (weak, nonatomic) IBOutlet UILabel *subTitle;
@property (nonatomic,strong) MVVMCellModel *model;
+ (instancetype)cellWithTableView:(UITableView *)tableView;
@end
