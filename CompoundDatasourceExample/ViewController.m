//
//  ViewController.m
//  CompoundDatasourceExample
//
//  Created by Manuel Meyer on 09.01.15.
//  Copyright (c) 2015 vs. All rights reserved.
//

#import "ViewController.h"
#import "OneSelectionPerSectionComoundTableViewDataSource.h"
#import "SingleSelectionSingleSectionDataSource.h"

@interface ViewController () <UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (nonatomic, strong) OneSelectionPerSectionComoundTableViewDataSource *tableViewDataSource;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableViewDataSource = [[OneSelectionPerSectionComoundTableViewDataSource alloc] initWithTableView:self.tableView];
    self.tableView.delegate = self;
    [self.tableViewDataSource setDataSource:[[SingleSelectionSingleSectionDataSource alloc] initWithArray:@[@"Hallo", @"Welt"]] forSection:0];
    [self.tableViewDataSource setDataSource:[[SingleSelectionSingleSectionDataSource alloc] initWithArray:@[@"Hello", @"World", @"!"]] forSection:1];
    [self.tableViewDataSource setDataSource:[[SingleSelectionSingleSectionDataSource alloc] initWithArray:@[@"Hola", @"Mundo", @"!", @"¿Que tal?"]] forSection:2];
    [self.tableViewDataSource setDataSource:[[SingleSelectionSingleSectionDataSource alloc] initWithArray:@[@"Hallo", @"Welt"]] forSection:3];
    [self.tableViewDataSource setDataSource:[[SingleSelectionSingleSectionDataSource alloc] initWithArray:@[@"Hello", @"World", @"!"]] forSection:4];
    [self.tableViewDataSource setDataSource:[[SingleSelectionSingleSectionDataSource alloc] initWithArray:@[@"Hola", @"Mundo", @"!", @"¿Que tal?"]] forSection:5];
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:NO];
    [self.tableViewDataSource selectedCellAtIndexPath:indexPath];
}
@end
