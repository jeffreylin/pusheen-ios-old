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

@synthesize root;

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
    
    self.thumbnailView = [[UIImageView alloc] initWithFrame:CGRectMake(padding, 8, 16, 16)];
    [self.thumbnailView setImage:self.thumbnail];
    [self addSubview:self.thumbnailView];
    
    self.checkmarkView = [[UIImageView alloc] initWithFrame:CGRectMake(self.frame.size.width - 16 - padding, 8, 16, 16)];
    [self.checkmarkView setImage:self.checkmark];
    [self addSubview:self.checkmarkView];
    
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
        //If the cell did not have a checkmark:
        if (self.checkmarkView.image == _checkmark)
        {
            self.root.selectionCount++;
            NSLog(@"Selections: %d", self.root.selectionCount);
            [self.checkmarkView setImage:self.checkmarkBlue];
        }
        self.textLabel.font = [UIFont fontWithName:@"HelveticaNeue-Bold" size:14.0f];
    }
    else {
        //If the cell currently has a checkmark:
        if (self.checkmarkView.image == _checkmarkBlue)
        {
            self.root.selectionCount--;
            [self.checkmarkView setImage:self.checkmark];
        }

        self.textLabel.font = [UIFont fontWithName:@"HelveticaNeue-Light" size:14.0f];
    }

}

@end
