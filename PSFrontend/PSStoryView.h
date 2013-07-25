//
//  PSStoryView.h
//  PSFrontend
//
//  Created by Jessica Liang on 7/25/13.
//  Copyright (c) 2013 Pusheen. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PSFeedStoryCell.h"
#import "PSFeedStoryHeader.h"

@interface PSStoryView : UIView
@property PSFeedStoryHeader* header;
@property contentType typeOfContent;
@end
