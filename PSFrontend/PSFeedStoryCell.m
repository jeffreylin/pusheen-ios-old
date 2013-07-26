//
//  PSFeedStoryCell.m
//  PSFrontend
//
//  Created by Jessica Liang on 7/23/13.
//  Copyright (c) 2013 Pusheen. All rights reserved.
//

#import "PSFeedStoryCell.h"
#import "PSFeedStoryHeader.h"
#import "UIColor+PSUIColorPalette.h"

@interface PSFeedStoryCell()

@end

@implementation PSFeedStoryCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self.selectionStyle = UITableViewCellSelectionStyleNone;
    if (self) {
        self.story = [[PSStoryView alloc]initWithFrame:CGRectMake(12, 12, self.frame.size.width - 24, 44.0 - 6)];//Hard coded fix later with autoresizing mask
        [self setBackgroundColor: [UIColor viewBackgroundColor]];
        [self addSubview:self.story];
    }
    return self;
}

- (void)setContentType: (contentType)type
{
    self.typeOfContent = type;
    [self.story setTypeOfContent:type];
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    // Configure the view for the selected state
    [super setSelected:selected animated:animated];
    
    if (selected) {
        UIActionSheet *sheet = [[UIActionSheet alloc] initWithTitle:nil delegate:self cancelButtonTitle:@"Cancel" destructiveButtonTitle:nil otherButtonTitles:@"Edit", @"Share", @"Delete", nil];
        [sheet showInView:_parent.view];
        _story.backgroundColor = [UIColor separatorColor];
    } else {
        _story.backgroundColor = [UIColor whiteColor];
    }
}

@end
