//
//  PSTableViewController.m
//  PSFrontend
//
//  Created by Yi-Lin Jao on 7/24/13.
//  Copyright (c) 2013 Pusheen. All rights reserved.
//

#import "PSDayTableViewController.h"
#import "UIColor+PSUIColorPalette.h"

@interface PSDayTableViewController ()

@property(nonatomic, retain) UIColor *separatorColor;

@end

@implementation PSDayTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:UITableViewStyleGrouped];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"JULY 31 2013";
    
    [[self view] setBackgroundColor:[UIColor viewBackgroundColor]];
    [self.navigationController.navigationBar setTranslucent:NO];
    [self.tableView setSeparatorColor:[UIColor clearColor]];

    UIImage *imgNavLog = [UIImage imageNamed:@"navLog-2"];
    UIBarButtonItem *leftButton = [[UIBarButtonItem alloc] initWithImage:(imgNavLog) style:UIBarButtonItemStylePlain target:self action:@selector(buttonPressed)];
    self.navigationItem.leftBarButtonItem = leftButton;
    
    UIImage *imgNavSettings = [UIImage imageNamed:@"navSettings-2"];
    UIBarButtonItem *rightButton = [[UIBarButtonItem alloc] initWithImage:(imgNavSettings) style:UIBarButtonItemStylePlain target:self action:@selector(buttonPressed)];
    self.navigationItem.rightBarButtonItem = rightButton;
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)buttonPressed
{
    NSLog(@"Ayo! You pressed a button.");
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
    // Return the number of cell we want.
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"UITableViewCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (!cell) {
        cell = [[UITableViewCell alloc]
                initWithStyle:UITableViewCellStyleDefault
                reuseIdentifier:@"UITableViewCell"];
    }
    
    //cell.textLabel.text = [tableData objectAtIndex:indexPath.row];
    return cell;

}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    // height of rows
    return 100.0;
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
