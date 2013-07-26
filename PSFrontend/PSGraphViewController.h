//
//  PSGraphViewController.h
//  PSFrontend
//
//  Created by Hansen Qian on 7/24/13.
//  Copyright (c) 2013 Pusheen. All rights reserved.
//

#import <UIKit/UIKit.h>

@class PSGraphSelectionTableViewController;

@interface PSGraphViewController : UIViewController

@property (strong, nonatomic) UIView *selectionContentView;
@property (strong, nonatomic) UIView *graphView;
@property (strong, nonatomic) PSGraphSelectionTableViewController *graphSelectionTableViewController;

@end
