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

- (id)init {
    if (self = [self initWithTimeCreated:[NSDate date]]) {

    }
    return self;
}

- (id)initWithTimeCreated:(id)timeCreated {
    if (self = [super init]) {
        _timeCreated = timeCreated;
        _uuid = [NSUUID UUID];
    }
    return self;
}

- (id)initWithContentType:(contentType)type title:(NSString *)title timeOfEvent:(NSDate *)timeOfEvent andTimeCreated:(NSDate *)timeCreated
{
    if (self = [self initWithTimeCreated:timeCreated]) {
        _typeOfContent = type;
        _title = title;
        _timeOfEvent = timeOfEvent;
    }
    return self;
}
@end
