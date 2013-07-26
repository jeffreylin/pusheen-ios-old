//
//  PSGraphSelectionCellModel.m
//  PSBackend
//
//  Created by Hansen Qian on 7/25/13.
//  Copyright (c) 2013 Pusheen. All rights reserved.
//

#import "PSGraphSelectionCellModel.h"

@implementation PSGraphSelectionCellModel

- (id)initWithImage:(UIImage *)image title:(NSString *)title detailText:(NSString *)detailText accessoryImage:(UIImage *)accessoryImageUnselected andSelectedAccessoryImage:(UIImage *)accessoryImageSelected {
    if (self = [super init]) {
        _image = image;
        _title = title;
        _detailText = detailText;
        _accessoryImageUnselected = accessoryImageUnselected;
        _accessoryImageSelected = accessoryImageSelected;
        _uuid = [NSUUID UUID];
    }
    return self;
}


@end
