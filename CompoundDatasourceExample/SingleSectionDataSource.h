//
//  SingleSectionDataSource.h
//  CompoundDatasourceExample
//
//  Created by Manuel Meyer on 09.01.15.
//  Copyright (c) 2015 vs. All rights reserved.
//

@import UIKit;

@interface SingleSectionDataSource : NSObject <UITableViewDataSource>
@property (nonatomic, strong, readonly) NSArray *array;
@property (nonatomic, strong, readonly) UITableView *tableView;

- (instancetype)initWithArray:(NSArray *)array;
@end
