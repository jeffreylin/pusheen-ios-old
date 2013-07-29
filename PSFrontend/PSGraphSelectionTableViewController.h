//
//  PSGraphSelectionTableViewController.h
//  PSFrontend
//
//  Created by Hansen Qian on 7/23/13.
//  Copyright (c) 2013 Pusheen. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PSGraphSelectionTableViewController : UITableViewController <UITableViewDataSource, UITableViewDelegate>
@property NSMutableArray* cellData;
@property int numCellsChecked;
@end
