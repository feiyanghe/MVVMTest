//
//  MVVMCellModel.h
//  MVVMTest
//
//  Created by feiyanghe on 2018/4/25.
//  Copyright © 2018年 feiyanghe. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MVVMCellModel : NSObject
@property (nonatomic,copy) NSString *image;
@property (nonatomic,copy) NSString *title;
@property (nonatomic,copy) NSString *subTitle;
- (instancetype)initWithDictionary:(NSDictionary *)dict;
+ (instancetype)infoWithDictionary:(NSDictionary *)dict;
@end
