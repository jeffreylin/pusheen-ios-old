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

@interface PSFeedStoryCell : UITableViewCell
@property BOOL isEditable;
@property PSStoryView* story;
@property contentType typeOfContent;
@end

