//
//  SingleSelectionSingleSectionDataSource.h
//  CompoundDatasourceExample
//
//  Created by Manuel Meyer on 09.01.15.
//  Copyright (c) 2015 vs. All rights reserved.
//

#import "SingleSectionDataSource.h"

@interface SingleSelectionSingleSectionDataSource : SingleSectionDataSource
-(void)selectedCellAtIndexPath:(NSIndexPath *)indexPath;
@end
