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
    [self.navigationBar setOpaque:YES];
    [[UINavigationBar appearance] setTitleTextAttributes: @{
                                                            UITextAttributeFont: [UIFont fontWithName:@"HelveticaNeue-Light" size:24.0f],
                                                            UITextAttributeTextColor: [UIColor navigationBarTitleColor],
                                                            }];
    [[UINavigationBar appearance] setBackgroundColor:[UIColor navigationBarColor]];

}

- (void)buttonPressed
{
    NSLog(@"Ayo! You pressed a button.");
}

-(UIStatusBarStyle)preferredStatusBarStyle{
    return UIStatusBarStyleLightContent;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end
