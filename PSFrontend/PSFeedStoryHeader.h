//
//  PSFeedStoryHeader.h
//  PSFrontend
//
//  Created by Jessica Liang on 7/23/13.
//  Copyright (c) 2013 Pusheen. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PSFeedEnums.h"

@interface PSFeedStoryHeader : UIView
@property contentType typeOfContent;
@property NSString* title;
@property NSDate* timestamp;
@property NSString* place;
@property UIImage* thumbnail;
@property UILabel* titleLabel;
@property UILabel* timestampLocationLabel;
@property UIImageView* thumbnailView;


@end
