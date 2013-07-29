//
//  PSGraphSelectionTableViewCell.m
//  PSFrontend
//
//  Created by Hansen Qian on 7/23/13.
//  Copyright (c) 2013 Pusheen. All rights reserved.
//

#import "PSGraphSelectionTableViewCell.h"

#import "PSConstants.h"

@implementation PSGraphSelectionTableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        _color = nil;
        [self setSelectionStyle:UITableViewCellSelectionStyleNone];
    }
    
    self.thumbnail = [UIImage imageNamed:@"thumbCalendar"];
    self.checkmark = [UIImage imageNamed:@"checkmarkOpen"];
    self.checkmarkBlue = [UIImage imageNamed:@"checkmarkBlue"];
    self.checkmarkRed = [UIImage imageNamed:@"checkmarkRed"];
    self.checkmarkGreen = [UIImage imageNamed:@"checkmarkGreen"];
    self.checkmarkClosed = [UIImage imageNamed:@"checkmarkClosed"];
    
    self.thumbnailView = [[UIImageView alloc] initWithFrame:CGRectMake(GLOBAL_PADDING, 8, 16, 16)];
    [self.thumbnailView setImage:self.thumbnail];
    [self addSubview:self.thumbnailView];
    
    self.checkmarkView = [[UIImageView alloc] initWithFrame:CGRectMake(self.frame.size.width - 16 - GLOBAL_PADDING, 8, 16, 16)];
    [self addSubview:self.checkmarkView];
    
    return self;
}

- (void)setFrame:(CGRect)frame {
    frame.origin.x += GLOBAL_PADDING;
    frame.size.width -= GLOBAL_PADDING * 2;
    [super setFrame:frame];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];
}

@end
