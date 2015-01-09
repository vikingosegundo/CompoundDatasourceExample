//
//  ComoundTableViewDataSource.h
//  CompoundDatasourceExample
//
//  Created by Manuel Meyer on 09.01.15.
//  Copyright (c) 2015 vs. All rights reserved.
//

@import UIKit;

@interface ComoundTableViewDataSource : NSObject
@property (nonatomic,strong, readonly) NSMutableDictionary *internalDictionary;


-(void) setDataSource:(id<UITableViewDataSource>)dataSource forSection:(NSUInteger)section;
-(instancetype)initWithTableView:(UITableView *)tableView;
@end
