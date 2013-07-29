//
//  PSGraphSelectionTableViewController.m
//  PSFrontend
//
//  Created by Hansen Qian on 7/23/13.
//  Copyright (c) 2013 Pusheen. All rights reserved.
//

#import "PSGraphSelectionTableViewController.h"
#import "PSGraphSelectionTableViewCell.h"
#import "UIColor+PSUIColorPalette.h"

static NSString *cellIdentifier = @"PSGraphSelectionTableViewCell";
static int NUM_ROWS = 15;
static int MAX_CELLS_CHECKED = 3;

@interface PSGraphSelectionTableViewController ()
{
}
@end

@implementation PSGraphSelectionTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        [[self tableView] registerClass:[PSGraphSelectionTableViewCell class] forCellReuseIdentifier:cellIdentifier];
        self.cellData = [[NSMutableArray alloc] init];
        self.numCellsChecked = 0;
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;

    [(UITableView *) [self tableView] setAllowsSelection:YES];
    [(UITableView *) [self tableView] setAllowsMultipleSelection:YES];
    [(UITableView *) [self tableView] setSeparatorInset:UIEdgeInsetsMake(0, 0, 0, -2)];
    [(UITableView *) [self tableView] setSeparatorColor:[UIColor separatorColor]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    for (int i = 0; i < NUM_ROWS; i++) {
        [self.cellData addObject:@"0"];
    }
    return NUM_ROWS;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    PSGraphSelectionTableViewCell *cell = (PSGraphSelectionTableViewCell *)[tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
    cell.backgroundColor = [UIColor whiteColor];
    cell.textLabel.font = [UIFont fontWithName:@"HelveticaNeue-Light" size:14.0f];
    cell.textLabel.text = [NSString stringWithFormat:@"      Test Category %d", [indexPath row]];  //Spacing is a hack right now -
    
    //Update images.
    if ([self.cellData[indexPath.row] isEqual: @"-1"]) {
        cell.checkmarkView.image = cell.checkmarkClosed;
    } else if ([self.cellData[indexPath.row] isEqual: @"0"]) {
        cell.checkmarkView.image = cell.checkmark;
    } else {
        cell.checkmarkView.image = cell.checkmarkBlue;
    }

    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (self.numCellsChecked < MAX_CELLS_CHECKED) {
        self.numCellsChecked++;
        NSLog(@"Numbers checked: %d", self.numCellsChecked);
        NSString *dataValue = [NSString stringWithFormat:@"%d", self.numCellsChecked];
        [self.cellData setObject:dataValue atIndexedSubscript:indexPath.row];
        
        if (self.numCellsChecked == MAX_CELLS_CHECKED) {
            NSLog(@"At capacity! Filling up to -1s.");
            for (int i = 0; i < NUM_ROWS; i++) {
                if ([self.cellData[i] isEqual: @"0"]) {
                    [self.cellData replaceObjectAtIndex:i withObject:@"-1"];
                }
            }
        }
        NSLog(@"%@", self.cellData);
    }
    [self updateCellImage];

}

- (void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath {
    if (self.cellData[indexPath.row] > 0) {
        [self.cellData replaceObjectAtIndex:indexPath.row withObject:@"0"];
        self.numCellsChecked--;
        
        NSLog(@"Numbers checked: %d", self.numCellsChecked);
        NSLog(@"%@", self.cellData);
    }
    [self updateCellImage];
}

- (void)updateCellImage
{
    for (PSGraphSelectionTableViewCell *cell in self.tableView.visibleCells) {
        NSIndexPath *indexPath = [self.tableView indexPathForCell:cell];
        
        if ([self.cellData[indexPath.row] isEqual: @"-1"]) {
            cell.checkmarkView.image = cell.checkmarkClosed;
        } else if ([self.cellData[indexPath.row] isEqual: @"0"]) {
            cell.checkmarkView.image = cell.checkmark;
        } else {
            cell.checkmarkView.image = cell.checkmarkBlue;
        }
    }

}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 32;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a story board-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

 */

@end
