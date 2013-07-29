//
//  PSDayPageViewController.m
//  PSFrontend
//
//  Created by Yi-Lin Jao on 7/25/13.
//  Copyright (c) 2013 Pusheen. All rights reserved.
//

#import "PSDayPageViewController.h"
#import "PSDayTableViewController.h"
#import "UIColor+PSUIColorPalette.h"
#import "PSGraphViewController.h"

@interface PSDayPageViewController ()

@end

@implementation PSDayPageViewController

- (id)initWithTransitionStyle:(UIPageViewControllerTransitionStyle)style navigationOrientation:(UIPageViewControllerNavigationOrientation)navigationOrientation options:(NSDictionary *)options
{
    self = [super initWithTransitionStyle:style navigationOrientation:navigationOrientation options:options];
    if (self) {
        // Custom initialization
        PSDayTableViewController *pageZero = [PSDayTableViewController psDayTableViewControllerForPageIndex:0];
        
        if (pageZero != nil)
        {
            // assign the first page to the pageViewController (our rootViewController)
            self.dataSource = self;
            [super setViewControllers:@[pageZero]
                            direction:UIPageViewControllerNavigationDirectionForward
                             animated:NO
                           completion:NULL];
        }
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"JULY 31 2013";
    
    //Get the current date.
    NSDate *date = [NSDate date];
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    //Format the date into a string.
    [dateFormat setDateStyle: NSDateFormatterMediumStyle];
    NSString *dateString = [dateFormat stringFromDate:date];
    dateString = dateString.uppercaseString;
    NSString *formattedString = [dateString stringByReplacingOccurrencesOfString:@"," withString:@""];
    self.title = formattedString;
    
    [[self view] setBackgroundColor:[UIColor viewBackgroundColor]];
    [self.navigationController.navigationBar setTranslucent:NO];
    
    UIImage *imgNavLog = [UIImage imageNamed:@"navLog"];
    UIBarButtonItem *leftButton = [[UIBarButtonItem alloc] initWithImage:(imgNavLog) style:UIBarButtonItemStylePlain target:self action:@selector(buttonPressed)];
    self.navigationItem.leftBarButtonItem = leftButton;
    
    UIImage *imgNavSettings = [UIImage imageNamed:@"navSettings"];
    UIBarButtonItem *rightButton = [[UIBarButtonItem alloc] initWithImage:(imgNavSettings) style:UIBarButtonItemStylePlain target:self action:@selector(buttonPressed)];
    self.navigationItem.rightBarButtonItem = rightButton;
}

- (void)buttonPressed
{
    PSGraphViewController *graphViewController = [[PSGraphViewController alloc] init];
    [self.navigationController popViewControllerAnimated:NO];
    [self.navigationController pushViewController:graphViewController animated:NO];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UIViewController *)pageViewController:(UIPageViewController *)pvc viewControllerBeforeViewController:(PSDayTableViewController *)vc
{
    NSUInteger index = vc.pageIndex;
    return [PSDayTableViewController psDayTableViewControllerForPageIndex:(index - 1)];
}

- (UIViewController *)pageViewController:(UIPageViewController *)pvc viewControllerAfterViewController:(PSDayTableViewController *)vc
{
    NSUInteger index = vc.pageIndex;
    return [PSDayTableViewController psDayTableViewControllerForPageIndex:(index + 1)];
}


@end
