//
//  OnSelectionPerSectionComoundTableViewDataSource.m
//  CompoundDatasourceExample
//
//  Created by Manuel Meyer on 09.01.15.
//  Copyright (c) 2015 vs. All rights reserved.
//

#import "OneSelectionPerSectionComoundTableViewDataSource.h"
#import "SingleSelectionSingleSectionDataSource.h"

@implementation OneSelectionPerSectionComoundTableViewDataSource


-(instancetype)initWithTableView:(UITableView *)tableView
{
    self = [super initWithTableView:tableView];
    if(self){
        [tableView setAllowsMultipleSelection:YES];
    }
    return self;
}

-(void)selectedCellAtIndexPath:(NSIndexPath *)indexPath
{
    SingleSelectionSingleSectionDataSource *sectionDataSource = self.internalDictionary[@(indexPath.section)];
    [sectionDataSource selectedCellAtIndexPath:indexPath];
}
@end
