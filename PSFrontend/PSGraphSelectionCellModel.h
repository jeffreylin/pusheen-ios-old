//
//  PSGraphSelectionCellModel.h
//  PSBackend
//
//  Created by Hansen Qian on 7/25/13.
//  Copyright (c) 2013 Pusheen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PSGraphSelectionCellModel : NSObject

@property (strong, nonatomic) UIImage *image;
@property (strong, nonatomic) NSString *title;
@property (strong, nonatomic) NSString *detailText;
@property (strong, nonatomic) UIImage *accessoryImageUnselected;
@property (strong, nonatomic) UIImage *accessoryImageSelected;
@property (strong, nonatomic, readonly) NSUUID *uuid;

- (id)initWithImage:(UIImage *)image title:(NSString *)title detailText:(NSString *)detailText accessoryImage:(UIImage *)accessoryImageUnselected andSelectedAccessoryImage:(UIImage *)accessoryImageSelected;

@end
