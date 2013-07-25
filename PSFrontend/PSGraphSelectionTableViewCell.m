//
//  PSGraphSelectionTableViewCell.m
//  PSFrontend
//
//  Created by Hansen Qian on 7/23/13.
//  Copyright (c) 2013 Pusheen. All rights reserved.
//

#import "PSGraphSelectionTableViewCell.h"

static CGFloat padding = 12;

@implementation PSGraphSelectionTableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
      _color = nil;
    }
    return self;
}

- (void)setFrame:(CGRect)frame {
    frame.origin.x += padding;
    frame.size.width -= padding * 2;
    [super setFrame:frame];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];
    // Set what happens when the cell is selected
}

@end
