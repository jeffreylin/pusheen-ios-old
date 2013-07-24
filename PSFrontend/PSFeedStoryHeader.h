//
//  PSFeedStoryHeader.h
//  PSFrontend
//
//  Created by Jessica Liang on 7/23/13.
//  Copyright (c) 2013 Pusheen. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PSFeedStoryCell.h"
#import "PSFeedStoryCell.h"
@interface PSFeedStoryHeader : UIView
@property enum contentType typeOfContent;
@property NSString* title;
@property NSDate* time;
@property NSString* place;
@end
