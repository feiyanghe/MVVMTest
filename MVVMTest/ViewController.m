//
//  ViewController.m
//  MVVMTest
//
//  Created by feiyanghe on 2018/4/25.
//  Copyright © 2018年 feiyanghe. All rights reserved.
//

#import "ViewController.h"
#import "MVVMViewModel.h"
#import "MVVMCell.h"
@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (nonatomic,strong) MVVMViewModel *viewModel;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    self.viewModel = [[MVVMViewModel alloc] init];
    __weak typeof(self) weakSelf = self;
    self.viewModel.loadCallback = ^(BOOL loadOK) {
        if (loadOK)
        {
            [weakSelf.tableView reloadData];
        }
    };
    NSLog(@"使用sourcetress管理APP项目源文件");
    //mvvm好处是解决了视图控制器胖模型问题，简化了控制器业务逻辑
}
#pragma mark - tableView delegate and dataSource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    NSInteger num;
    num = [self.viewModel numberOfSections];
    return num;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSInteger num;
    num = [self.viewModel numberOfItemsInSection:section];
    return num;
}
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    CGFloat height;
    height = [self.viewModel tableView:tableView heightForHeaderInSection:section];
    return height;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    CGFloat height;
    height = [self.viewModel tableView:tableView heightForRowAtIndexPath:indexPath];
    return height;
    
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    return [self.viewModel tableView:tableView cellForRowAtIndexPath:indexPath];
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [self.viewModel tableView:tableView didSelectRowAtIndexPath:indexPath];
    //控制器的跳转仍在此处实现
    if (indexPath.section == 1) {
        
    }
}




@end
