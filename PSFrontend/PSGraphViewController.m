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
#import "PSGraphSCrollViewController.h"

#import "UIColor+PSUIColorPalette.h"

#import "PSConstants.h"

@interface PSGraphViewController ()

@property (strong, nonatomic) UIView *paddingView;

@end

@implementation PSGraphViewController

- (id)init {
    if (self = [super init]) {
        _selectionContentView = nil;
        _graphView = nil;
        _graphSelectionTableViewController = nil;
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
    CGRect paddingViewFrame = CGRectMake(GLOBAL_ZERO, GLOBAL_ZERO, graphViewFrame.size.width, graphViewFrame.size.height - GRAPH_VIEW_HEIGHT - GS_TABLE_VIEW_ORIGIN_Y);
    CGRect contentViewFrame = CGRectMake(GLOBAL_ZERO, GLOBAL_ZERO, paddingViewFrame.size.width, paddingViewFrame.size.height);
    CGRect graphSelectionTableViewFrame = CGRectMake(GLOBAL_ZERO, GLOBAL_ZERO, contentViewFrame.size.width, contentViewFrame.size.height);


    _paddingView = [[UIScrollView alloc] initWithFrame: paddingViewFrame];
    [_paddingView setBackgroundColor:[UIColor viewBackgroundColor]];

    _selectionContentView = [[UIView alloc] initWithFrame:contentViewFrame];
    [_selectionContentView setBackgroundColor:[UIColor viewBackgroundColor]];

    UITableView *graphSelectionTableView = (UITableView *) [_graphSelectionTableViewController tableView];
    [graphSelectionTableView setFrame:graphSelectionTableViewFrame];
    [graphSelectionTableView setBackgroundColor:[UIColor viewBackgroundColor]];

    [[self view] addSubview:_paddingView];
    [_paddingView addSubview:_selectionContentView];
    [_selectionContentView addSubview:[_graphSelectionTableViewController tableView]];

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
    
    //Add Month scroll view:
    PSGraphScrollViewController *scrollViewController = [[PSGraphScrollViewController alloc] init];
    [scrollViewController setFrame:CGRectMake(GLOBAL_ZERO, contentViewFrame.size.height + 1, contentViewFrame.size.width, GRAPH_VIEW_HEIGHT)];
    [scrollViewController setBackgroundColor:[UIColor navigationBarColor]];
    [[self view] addSubview:scrollViewController];
}

- (void)buttonPressed
{
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

