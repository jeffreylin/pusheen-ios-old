//
//  PSCellInfoModel.h
//  PSFrontend
//
//  Created by Jessica Liang on 7/24/13.
//  Copyright (c) 2013 Pusheen. All rights reserved.
//

// This class handles all information needed to be presented in a cell in DayView
// as we add other types of

#import <Foundation/Foundation.h>
#import "PSFeedEnums.h"

@interface PSFeedCellModel : NSObject

@property contentType typeOfContent;
@property NSString* storyTitle;
@property NSString* textContent;
@property NSDate* timestamp;

@end
