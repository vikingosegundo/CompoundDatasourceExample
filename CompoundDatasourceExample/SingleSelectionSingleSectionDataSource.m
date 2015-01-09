//
//  SingleSelectionSingleSectionDataSource.m
//  CompoundDatasourceExample
//
//  Created by Manuel Meyer on 09.01.15.
//  Copyright (c) 2015 vs. All rights reserved.
//

#import "SingleSelectionSingleSectionDataSource.h"

@implementation SingleSelectionSingleSectionDataSource
-(void)selectedCellAtIndexPath:(NSIndexPath *)indexPath
{
    for (int row = 0; row < self.array.count; ++row) {
        UITableViewCell *cell = [self.tableView cellForRowAtIndexPath:[NSIndexPath indexPathForRow:row inSection:indexPath.section]];
        if (row == indexPath.row) {
            [cell setSelected:YES];
        } else {
            [cell setSelected:NO];
        }
    }
}
@end
