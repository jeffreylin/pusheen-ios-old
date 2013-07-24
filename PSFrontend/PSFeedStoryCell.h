//
//  PSFeedStoryCell.h
//  PSFrontend
//
//  Created by Jessica Liang on 7/23/13.
//  Copyright (c) 2013 Pusheen. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PSFeedStoryHeader.h"
typedef enum {
    TEXT_ENTRY,
    EVENT
}contentType;
@interface PSFeedStoryCell : UITableViewCell
@property BOOL isEditable;
@property PSFeedStoryHeader* header;
@property UIView* content;
@end
