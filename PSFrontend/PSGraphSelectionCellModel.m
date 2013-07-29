//
//  PSGraphSelectionCellModel.m
//  PSBackend
//
//  Created by Hansen Qian on 7/25/13.
//  Copyright (c) 2013 Pusheen. All rights reserved.
//

#import "PSGraphSelectionCellModel.h"

@implementation PSGraphSelectionCellModel

- (id)initWithImage:(UIImage *)image title:(NSString *)title detailText:(NSString *)detailText accessoryImage:(UIImage *)accessoryImage andLinking:(BOOL)needsLink{
    if (self = [super init]) {
        _image = image;
        _title = title;
        _detailText = detailText;
        _accessoryImage = accessoryImage;
        _uuid = [NSUUID UUID];
        _needsLink = needsLink;
    }
    return self;
}


@end
