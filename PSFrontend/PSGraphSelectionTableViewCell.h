//
//  PSGraphSelectionTableViewCell.h
//  PSFrontend
//
//  Created by Hansen Qian on 7/23/13.
//  Copyright (c) 2013 Pusheen. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PSGraphSelectionTableViewController.h"

@interface PSGraphSelectionTableViewCell : UITableViewCell

@property (strong, nonatomic) UIColor *color;

@property UIImage* thumbnail;
@property UIImage* checkmark;
@property UIImage* checkmarkBlue;
@property UIImage* checkmarkClosed;
@property UIImageView* thumbnailView;
@property UIImageView* checkmarkView;

@end
