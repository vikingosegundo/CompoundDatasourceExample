//
//  ComoundTableViewDataSource.m
//  CompoundDatasourceExample
//
//  Created by Manuel Meyer on 09.01.15.
//  Copyright (c) 2015 vs. All rights reserved.
//

#import "ComoundTableViewDataSource.h"


@interface ComoundTableViewDataSource () <UITableViewDataSource>
@property (nonatomic,strong, readwrite) NSMutableDictionary *internalDictionary;
@property (nonatomic, weak) UITableView *tableView;
@end

@implementation ComoundTableViewDataSource
-(instancetype)initWithTableView:(UITableView *)tableView
{
    self = [super init];
    if (self) {
        _tableView = tableView;
        tableView.dataSource = self;
        _internalDictionary = [@{} mutableCopy];
        [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"Cell"];

    }
    return self;
}

-(void)setDataSource:(id<UITableViewDataSource>)dataSource forSection:(NSUInteger)section
{
    self.internalDictionary[@(section)] = dataSource;
    [self.tableView reloadData];
    
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return [[self.internalDictionary allKeys] count];
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    id<UITableViewDataSource> sectionDataSource = self.internalDictionary[@(section)];
    return [sectionDataSource tableView:tableView numberOfRowsInSection:section];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    id<UITableViewDataSource> sectionDataSource = self.internalDictionary[@(indexPath.section)];
    return [sectionDataSource tableView:tableView cellForRowAtIndexPath:indexPath];

}


-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    id<UITableViewDataSource> sectionDataSource = self.internalDictionary[@(section)];
    return [sectionDataSource tableView:tableView titleForHeaderInSection:section];
}
@end
