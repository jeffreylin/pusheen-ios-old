//
//  PSGraphViewController.m
//  PSFrontend
//
//  Created by Hansen Qian on 7/24/13.
//  Copyright (c) 2013 Pusheen. All rights reserved.
//

#import "PSGraphViewController.h"

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
        CGRect graphViewFrame = [[self view] frame];
        CGRect paddingViewFrame = CGRectMake(graphViewFrame.origin.x, graphViewFrame.origin.y, graphViewFrame.size.width, graphViewFrame.size.height - graphHeight);
        _paddingView = [[UIScrollView alloc] initWithFrame: paddingViewFrame];
    }
    return self;
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];


}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
