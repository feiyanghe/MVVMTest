//
//  MVVMCellModel.m
//  MVVMTest
//
//  Created by feiyanghe on 2018/4/25.
//  Copyright © 2018年 feiyanghe. All rights reserved.
//

#import "MVVMCellModel.h"

@implementation MVVMCellModel
- (instancetype)initWithDictionary:(NSDictionary *)dict
{
    if (self = [super init])
    {
        [self setValuesForKeysWithDictionary:dict];
    }
    return self;
    
}
+ (instancetype)infoWithDictionary:(NSDictionary *)dict
{
    return [[self alloc] initWithDictionary:dict];
}
@end
