//
//  PSFeedStoryHeader.h
//  PSFrontend
//
//  Created by Jessica Liang on 7/23/13.
//  Copyright (c) 2013 Pusheen. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PSFeedEnums.h"
#import "PSFeedCellModel.h"
#import "PSFeedCellModel.h"
@interface PSFeedStoryHeader : UIView
@property UILabel* titleLabel;
@property UILabel* timestampLocationLabel;
@property UIImageView* thumbnailView;
@property PSFeedCellModel* infoModel;
- (id)initWithFrame:(CGRect)frame andModel: (PSFeedCellModel *)model;
@end
