//
//  MVVMCell.m
//  MVVMTest
//
//  Created by feiyanghe on 2018/4/25.
//  Copyright © 2018年 feiyanghe. All rights reserved.
//

#import "MVVMCell.h"
#import "MVVMCellModel.h"
@implementation MVVMCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}
+ (instancetype)cellWithTableView:(UITableView *)tableView
{
    static NSString *identifier = @"MVVMCell";
    MVVMCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (cell == nil)
    {
        cell = [[NSBundle mainBundle] loadNibNamed:@"MVVMCell" owner:nil options:nil][0];
    }
    return cell;
}
#pragma mark - 重写set方法，传递模型
- (void)setModel:(MVVMCellModel *)model
{
    _model = model;
    self.icon.image = [UIImage imageNamed:model.image];
    self.title.text = model.title;
    self.subTitle.text = model.subTitle;
}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
