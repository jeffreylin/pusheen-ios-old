//
//  PSDayPageViewController.m
//  PSFrontend
//
//  Created by Yi-Lin Jao on 7/25/13.
//  Copyright (c) 2013 Pusheen. All rights reserved.
//

#import "PSDayPageViewController.h"
#import "PSDayTableViewController.h"

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
            NSLog(@"%@", self.view);
            self.view.backgroundColor = [UIColor yellowColor];
        }
    }
    return self;
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
