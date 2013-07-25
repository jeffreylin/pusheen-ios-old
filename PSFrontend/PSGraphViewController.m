//
//  PSGraphViewController.m
//  PSFrontend
//
//  Created by Hansen Qian on 7/24/13.
//  Copyright (c) 2013 Pusheen. All rights reserved.
//

#import "PSGraphViewController.h"
#import "PSDayTableViewController.h"
#import "PSGraphSelectionTableViewController.h"
#import "UIColor+PSUIColorPalette.h"

static CGFloat padding = 12;
static CGFloat zero = 0.0;
static CGFloat paddingViewOriginY = 64;
static CGFloat tableViewOriginY = 65;
static CGFloat tableViewHeight = 291;
static CGFloat graphHeight = 212;

@interface PSGraphViewController ()

@property (strong, nonatomic) UIView *paddingView;

@end

@implementation PSGraphViewController

- (id)init {
    if (self = [super init]) {
    }
    return self;
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];

}

- (void)viewDidLoad
{
    [super viewDidLoad];

    _graphSelectionTableViewController = [[PSGraphSelectionTableViewController alloc] init];
//    CGFloat graphSelectionTableViewHeight = [_graphSelectionTableViewController tableViewHeight];

    CGRect graphViewFrame = [[self view] frame];
    CGRect paddingViewFrame = CGRectMake(zero, zero, graphViewFrame.size.width, graphViewFrame.size.height - graphHeight);
    CGRect contentViewFrame = CGRectMake(zero, zero + padding, paddingViewFrame.size.width, paddingViewFrame.size.height - padding - paddingViewOriginY);
    CGRect graphSelectionTableViewFrame = CGRectMake(zero, zero, contentViewFrame.size.width, contentViewFrame.size.height);

    NSLog(@"%@, %@, %@, %@", NSStringFromCGRect(graphViewFrame), NSStringFromCGRect(paddingViewFrame), NSStringFromCGRect(contentViewFrame), NSStringFromCGRect(graphSelectionTableViewFrame));

    [[self view] setBackgroundColor:[UIColor purpleColor]];

    _paddingView = [[UIScrollView alloc] initWithFrame: paddingViewFrame];
    [_paddingView setBackgroundColor:[UIColor blueColor]];

    _contentView = [[UIView alloc] initWithFrame:contentViewFrame];
    [_contentView setBackgroundColor:[UIColor greenColor]];

    UITableView *graphSelectionTableView = (UITableView *) [_graphSelectionTableViewController view];
    [graphSelectionTableView setFrame:graphSelectionTableViewFrame];
    [graphSelectionTableView setBackgroundColor:[UIColor yellowColor]];

    [[self view] addSubview:_paddingView];
    [_paddingView addSubview:_contentView];
    [_contentView addSubview:[_graphSelectionTableViewController tableView]];
    
    //Set up Navigation Bar:
    self.title = @"DATA";
    
    [[self view] setBackgroundColor:[UIColor viewBackgroundColor]];
    [self.navigationController.navigationBar setTranslucent:NO];
    
    UIImage *imgNavLog = [UIImage imageNamed:@"navFeed"];
    UIBarButtonItem *leftButton = [[UIBarButtonItem alloc] initWithImage:(imgNavLog) style:UIBarButtonItemStylePlain target:self action:@selector(buttonPressed)];
    self.navigationItem.leftBarButtonItem = leftButton;
    
    UIImage *imgNavSettings = [UIImage imageNamed:@"navSettings"];
    UIBarButtonItem *rightButton = [[UIBarButtonItem alloc] initWithImage:(imgNavSettings) style:UIBarButtonItemStylePlain target:self action:@selector(buttonPressed)];
    self.navigationItem.rightBarButtonItem = rightButton;
}

- (void)buttonPressed
{
    NSLog(@"Switching to Day View.");
    
    PSDayTableViewController *dayTableViewController = [[PSDayTableViewController alloc] init];
    [self.navigationController popViewControllerAnimated:NO];
    [self.navigationController pushViewController:dayTableViewController animated:NO];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

