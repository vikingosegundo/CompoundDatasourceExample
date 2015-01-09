//
//  SingleSectionDataSource.m
//  CompoundDatasourceExample
//
//  Created by Manuel Meyer on 09.01.15.
//  Copyright (c) 2015 vs. All rights reserved.
//

#import "SingleSectionDataSource.h"

@interface SingleSectionDataSource ()
@property (nonatomic, strong, readwrite) NSArray *array;
@property (nonatomic, strong, readwrite) UITableView *tableView;

@end

@implementation SingleSectionDataSource

- (instancetype)initWithArray:(NSArray *)array
{
    self = [super init];
    if (self) {
        self.array = array;
    }
    return self;
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    self.tableView = tableView;
    return self.array.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    cell.textLabel.text = self.array[indexPath.row];
    return cell;
}

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    return [@(section) stringValue];
}

@end
