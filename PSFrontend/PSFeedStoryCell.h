//
//  PSFeedStoryCell.h
//  PSFrontend
//
//  Created by Jessica Liang on 7/23/13.
//  Copyright (c) 2013 Pusheen. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PSFeedEnums.h"
#import "PSStoryView.h"
#import "PSFeedCellModel.h"
#import "PSDayTableViewController.h"

@interface PSFeedStoryCell : UITableViewCell <UIActionSheetDelegate>
@property BOOL isEditable;
@property PSStoryView* story;
@property PSFeedCellModel* infoModel;
@property PSDayTableViewController* delegate;
- (id)initWithModel:(PSFeedCellModel *) model style:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier;
@end

