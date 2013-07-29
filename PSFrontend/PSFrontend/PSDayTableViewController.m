//
//  PSDayTableViewController.m
//  PSFrontend
//
//  Created by Yi-Lin Jao on 7/24/13.
//  Copyright (c) 2013 Pusheen. All rights reserved.
//

#import "PSDayTableViewController.h"
#import "PSGraphViewController.h"
#import "UIColor+PSUIColorPalette.h"
#import "PSFeedStoryCell.h"
#import "PSFeedCellModel.h"
#import "PSFeedEnums.h"
@interface PSDayTableViewController ()
{
    NSUInteger _pageIndex;
}
@property(nonatomic, retain) UIColor *separatorColor;
//@property (strong,nonatomic) PSDayTableView *delegate;

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
    //self.tableView.contentInset = UIEdgeInsetsMake(-35, 0, -35, 0);
    
    //Get the current date.
    NSDate *date = [NSDate date];
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    //Format the date into a string.
    [dateFormat setDateStyle: NSDateFormatterMediumStyle];
    NSString *dateString = [dateFormat stringFromDate:date];
    dateString = dateString.uppercaseString;
    NSString *formattedString = [dateString stringByReplacingOccurrencesOfString:@"," withString:@""];
    self.title = formattedString;
    
    [[self view] setBackgroundColor:[UIColor purpleColor]];
    [self.navigationController.navigationBar setTranslucent:NO];
    [self.tableView setSeparatorColor:[UIColor clearColor]];
    

    UIImage *imgNavLog = [UIImage imageNamed:@"navLog"];
    UIBarButtonItem *leftButton = [[UIBarButtonItem alloc] initWithImage:(imgNavLog) style:UIBarButtonItemStylePlain target:self action:@selector(buttonPressed)];
    self.navigationItem.leftBarButtonItem = leftButton;
    
    UIImage *imgNavSettings = [UIImage imageNamed:@"navSettings"];
    UIBarButtonItem *rightButton = [[UIBarButtonItem alloc] initWithImage:(imgNavSettings) style:UIBarButtonItemStylePlain target:self action:@selector(buttonPressed)];
    self.navigationItem.rightBarButtonItem = rightButton;
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    NSLog(@"%@", self.view);
    NSLog(@"%@", self.tableView);
    //CGRect currentFrame = self.tableView.frame;
    //self.tableView.frame = CGRectMake(0, 0, currentFrame.size.width, 100);
    //self.tableView.backgroundColor = [UIColor blueColor];

}

- (void)buttonPressed
{
    PSGraphViewController *graphViewController = [[PSGraphViewController alloc] init];
    [self.navigationController popViewControllerAnimated:NO];
    [self.navigationController pushViewController:graphViewController animated:NO];

    //[UIView transitionFromView:self.view toView:graphViewController.view duration:0.5
    //                   options:UIViewAnimationOptionTransitionFlipFromLeft
    //                completion:nil];
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
    return 5;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"UITableViewCell";
    PSFeedStoryCell *cell = (PSFeedStoryCell *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    PSFeedCellModel *placeholderModel = [[PSFeedCellModel alloc]
                                         initWithContentType:TEXT_ENTRY title:@"Title" andTime:[NSDate date]];
    placeholderModel.place = @"Facebook Campus";
    placeholderModel.thumbnail = [UIImage imageNamed:@"thumbCalendar"];
    if (!cell) {
        cell = [[PSFeedStoryCell alloc]
                initWithModel:placeholderModel style:UITableViewCellStyleDefault reuseIdentifier:@"UITableViewCell"];
        
    }
    cell.delegate = self;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;

}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    // height of rows
    return 44.0;
}


+ (PSDayTableViewController *)psDayTableViewControllerForPageIndex:(NSUInteger)pageIndex
{
    if (pageIndex < 5)//[PSDayScrollView tableCount]
    {
        return [[PSDayTableViewController alloc] initWithPageIndex:pageIndex];//??
    }
    return nil;
}

- (id)initWithPageIndex:(NSInteger)pageIndex
{
    self = [super initWithNibName:nil bundle:nil];
    if (self)
    {
        _pageIndex = pageIndex;
    }
    return self;
}

- (NSInteger)pageIndex
{
    return _pageIndex;
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
