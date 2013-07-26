//
//  PSCellInfoModel.m
//  PSFrontend
//
//  Created by Jessica Liang on 7/24/13.
//  Copyright (c) 2013 Pusheen. All rights reserved.
//

#import "PSFeedCellModel.h"

@interface PSFeedCellModel () {
}

@end

@implementation PSFeedCellModel

- (id)initWithContentType:(contentType)type title:(NSString *)title andTime:(NSDate *)time
{
    if (self = [super init]) {
        self.typeOfContent = type;
        self.title = title;
        self.timestamp = time;
        _uuid = [NSUUID UUID];
    }
    return self;
}
@end
