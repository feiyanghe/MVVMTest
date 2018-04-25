//
//  MVVMViewModel.h
//  MVVMTest
//
//  Created by feiyanghe on 2018/4/25.
//  Copyright © 2018年 feiyanghe. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
typedef void (^callback)(BOOL loadOK);
@class UITableView,MVVMCell;
@interface MVVMViewModel : NSObject
@property (nonatomic,copy) NSMutableArray *infoArray;
@property (nonatomic,copy) callback loadCallback;
- (NSInteger)numberOfSections;
- (NSInteger)numberOfItemsInSection:(NSInteger)section;
- (NSString *)titleForHeaderInSection:(NSInteger)section;
- (NSString *)titleForFooterInSection:(NSInteger)section;
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section;
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(nonnull NSIndexPath *)indexPath;
- (MVVMCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath;
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(nonnull NSIndexPath *)indexPath;
@end
