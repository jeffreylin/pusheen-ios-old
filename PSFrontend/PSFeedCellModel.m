//
//  PSCellInfoModel.m
//  PSFrontend
//
//  Created by Jessica Liang on 7/24/13.
//  Copyright (c) 2013 Pusheen. All rights reserved.
//

#import "PSFeedCellModel.h"

@implementation PSFeedCellModel

- (id)initWithContentType: (contentType) type title: (NSString*) title andTimestamp: (NSDate*) time
{
    if (self = [super init]) {
        self.typeOfContent = type;
        self.storyTitle = title;
        self.timestamp = time;
    }
    return self;
}
@end
