//
//  PSCellInfoModel.h
//  PSFrontend
//
//  Created by Jessica Liang on 7/24/13.
//  Copyright (c) 2013 Pusheen. All rights reserved.
//

// This class handles all information needed to be presented in a cell in DayView as we add other types of

#import <Foundation/Foundation.h>
#import "PSFeedEnums.h"

@interface PSFeedCellModel : NSObject

@property (nonatomic) contentType typeOfContent;
@property (strong, nonatomic) NSString* title;
@property (strong, nonatomic) NSString* textContent;
@property (strong, nonatomic) NSDate* timestamp;
@property (strong, nonatomic, readonly) NSUUID *uuid;

- (id)initWithContentType:(contentType)type title:(NSString *)title andTime:(NSDate *)time;


@end