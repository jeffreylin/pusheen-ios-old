//
//  PSAppDelegate.m
//  PSFrontend
//
//  Created by Hansen Qian on 7/23/13.
//  Copyright (c) 2013 Pusheen. All rights reserved.
//

#import "PSAppDelegate.h"
#import "PSNavigationController.h"
#import "PSDayTableViewController.h"
#import "PSGraphViewController.h"

@implementation PSAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    //Create our new window:
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];

    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent animated:NO];

    PSDayTableViewController *feedTableViewController = [[PSDayTableViewController alloc] init];



    // AppDelegate should probably only contain the navController its rootViewController








    PSNavigationController *navController = [[PSNavigationController alloc] initWithRootViewController:feedTableViewController];
    //PSNavigationController *navController = [[PSNavigationController alloc] initWithRootViewController:graphSelectionTableViewController];
    
    CGRect screenRect = [[self window] bounds];
    CGRect bigRect = screenRect;
    bigRect.size.width *= 3.0;
    
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:screenRect];
    [scrollView setPagingEnabled:YES];
    [[self window] addSubview:scrollView];
    /*
    PSTableView *view = [[PSTableView alloc] initWithFrame:screenRect];
    [scrollView addSubview:view];
    
    screenRect.origin.x = screenRect.size.width;
    
    PSTableView *rightView = [[PSTableView alloc] initWithFrame:screenRect];
    [scrollView addSubview:rightView];
    
    screenRect.origin.x -= 2*screenRect.size.width;
    
    PSTableView *leftView = [[PSTableView alloc] initWithFrame:screenRect];
    [scrollView addSubview:leftView];
     */
    
    [scrollView setContentSize:bigRect.size];


    PSGraphViewController *graphViewController = [[PSGraphViewController alloc] init];

//    PSNavigationController *navController = [[PSNavigationController alloc] initWithRootViewController:feedTableViewController];
    PSNavigationController *navController = [[PSNavigationController alloc] initWithRootViewController:graphViewController];

    [[self window] setRootViewController:navController];
    [self.window makeKeyAndVisible];

    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
  // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
  // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
  // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
  // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
  // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
  // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
  // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end



