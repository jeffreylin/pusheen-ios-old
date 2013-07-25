//
//  PSGraphViewController.m
//  PSFrontend
//
//  Created by Hansen Qian on 7/24/13.
//  Copyright (c) 2013 Pusheen. All rights reserved.
//

#import "PSGraphViewController.h"
#import "PSGraphSelectionTableViewController.h"

static CGFloat padding = 12;
static CGFloat tableViewOriginY = 65;
static CGFloat tableViewHeight = 291;
static CGFloat graphHeight = 212;

@interface PSGraphViewController ()

@property (strong, nonatomic) UIScrollView *paddingView;

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
    CGRect graphViewFrame = [[self view] frame];
    CGRect paddingViewFrame = CGRectMake(graphViewFrame.origin.x, graphViewFrame.origin.y, graphViewFrame.size.width, graphViewFrame.size.height - graphHeight);
    _paddingView = [[UIScrollView alloc] initWithFrame: paddingViewFrame];
    [_paddingView setBackgroundColor:[UIColor blueColor]];

    CGRect contentViewFrame = CGRectMake(paddingViewFrame.origin.x + padding, paddingViewFrame.origin.y + padding, paddingViewFrame.size.width - 2 * padding, paddingViewFrame.size.height);
    _contentView = [[UIView alloc] initWithFrame:contentViewFrame];
    [_contentView setBackgroundColor:[UIColor greenColor]];

    [[self view] addSubview:_paddingView];
    [_paddingView addSubview:_contentView];

    _graphSelectionTableViewController = [[PSGraphSelectionTableViewController alloc] init];
//    [[_graphSelectionTableViewController view] setFrame:[_contentView frame]];
    [[_graphSelectionTableViewController view] setBackgroundColor:[UIColor yellowColor]];
    [_contentView addSubview:[_graphSelectionTableViewController tableView]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
