//
//  PSNavigationController.m
//  PSFrontend
//
//  Created by Hansen Qian on 7/23/13.
//  Copyright (c) 2013 Pusheen. All rights reserved.
//

#import "PSNavigationController.h"
#import "UIColor+PSUIColorPalette.h"

@interface PSNavigationController ()

@end

@implementation PSNavigationController

- (void)viewDidLoad
{
    [super viewDidLoad];
    //[self.navigationBar setBackgroundColor:[UIColor blackColor]];
    [self.navigationBar setOpaque:YES];

    [[UINavigationBar appearance] setTitleTextAttributes: @{
                                                            UITextAttributeFont: [UIFont fontWithName:@"Helvetica Neue" size:24.0f],
                                                            UITextAttributeTextColor: [UIColor navigationBarTitleColor],
                                                            }];
    [[UINavigationBar appearance] setBackgroundColor:[UIColor blackColor]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

/*
Configuring Navigation Bars
navigationBar  property
navigationBarHidden  property
– setNavigationBarHidden:animated:
*/