//
//  MVVMViewModel.m
//  MVVMTest
//
//  Created by feiyanghe on 2018/4/25.
//  Copyright © 2018年 feiyanghe. All rights reserved.
//

#import "MVVMViewModel.h"
#import "MVVMCellModel.h"
#import "MVVMCell.h"
@implementation MVVMViewModel
- (NSMutableArray *)infoArray
{
    if (_infoArray == nil)
    {
        _infoArray = [NSMutableArray array];
    }
    return _infoArray;
}
- (instancetype)init
{
    if (self = [super init])
    {
        [self getInfo];
    }
    return self;
}
- (void)getInfo
{
    
    //实际开发是通过网络请求获取数据，在此模拟给出一个数据
    NSArray *array = @[@{@"image":@"img1",@"title":@"尝试使用MVVM1",@"subTitle":@"MVVM到底好不好用，只有用了才知道！"},@{@"image":@"img1",@"title":@"尝试使用MVVM2",@"subTitle":@"MVVM到底好不好用，只有用了才知道！"},@{@"image":@"img1",@"title":@"尝试使用MVVM3",@"subTitle":@"MVVM到底好不好用，只有用了才知道！"},@{@"image":@"img1",@"title":@"尝试使用MVVM4",@"subTitle":@"MVVM到底好不好用，只有用了才知道！"},@{@"image":@"img1",@"title":@"尝试使用MVVM5",@"subTitle":@"MVVM到底好不好用，只有用了才知道！"},@{@"image":@"img1",@"title":@"尝试使用MVVM6",@"subTitle":@"MVVM到底好不好用，只有用了才知道！"},@{@"image":@"img1",@"title":@"尝试使用MVVM7",@"subTitle":@"MVVM到底好不好用，只有用了才知道！"},@{@"image":@"img1",@"title":@"尝试使用MVVM8",@"subTitle":@"MVVM到底好不好用，只有用了才知道！"}];
    //解析数据,数据转模型
    NSMutableArray *tempArr = [NSMutableArray array];
    for (NSDictionary *dict in array)
    {
        MVVMCellModel *model = [MVVMCellModel infoWithDictionary:dict];
        [tempArr addObject:model];
    }
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        self.infoArray = tempArr.mutableCopy;
        if (self.loadCallback)
        {
            self.loadCallback(YES);
        }
        
    });
    
}
- (NSInteger)numberOfSections
{
    return 1;
}
- (NSInteger)numberOfItemsInSection:(NSInteger)section
{
    return self.infoArray.count;
}
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 0.00001;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(nonnull NSIndexPath *)indexPath
{
    return 80.0;
}
- (MVVMCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath
{
    MVVMCell *cell = [MVVMCell cellWithTableView:tableView];
    cell.model = self.infoArray[indexPath.row];
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(nonnull NSIndexPath *)indexPath
{
    MVVMCell *cell = (MVVMCell *)[tableView cellForRowAtIndexPath:indexPath];
    NSString *title = cell.title.text;
    NSLog(@"点击的cell的title>>>>%@",title);
}
@end
