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
        [self setSelectionStyle:UITableViewCellSelectionStyleNone];
    }
    
    self.thumbnail = [UIImage imageNamed:@"thumbCalendar"];
    self.thumbnailView = [[UIImageView alloc] initWithFrame:CGRectMake(padding, 8, 16, 16)];
    [self.thumbnailView setImage:self.thumbnail];
    [self addSubview:self.thumbnailView];
    
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
    if (selected) {
        [self setAccessoryType:UITableViewCellAccessoryCheckmark];
        self.textLabel.font = [UIFont fontWithName:@"HelveticaNeue-Bold" size:14.0f];
    } else {
        [self setAccessoryType:UITableViewCellAccessoryNone];
        self.textLabel.font = [UIFont fontWithName:@"HelveticaNeue-Light" size:14.0f];
    }

}

@end
