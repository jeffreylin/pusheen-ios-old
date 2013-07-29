//
//  PSFeedStoryHeader.m
//  PSFrontend
//
//  Created by Jessica Liang on 7/23/13.
//  Copyright (c) 2013 Pusheen. All rights reserved.
//

#import "PSFeedStoryHeader.h"
#import "PSFeedStoryCell.h"
#import "UIColor+PSUIColorPalette.h"
@interface PSFeedStoryHeader()

@end

@implementation PSFeedStoryHeader
- (id)initWithFrame:(CGRect)frame andModel: (PSFeedCellModel *)model
{
    if (self = [super initWithFrame:frame]) {
        self.infoModel = model;
        [self setBackgroundColor:[UIColor clearColor]];
       
    }
    return self;
}
- (void)layoutSubviews
{
    CGFloat xPosition = 0.0f;
    
    self.thumbnailView = [[UIImageView alloc] initWithFrame:CGRectMake(xPosition, 0, 16, 16)];
    [self.thumbnailView setImage:self.infoModel.thumbnail];
    xPosition += self.thumbnailView.frame.size.width + 16;
    [self addSubview:self.thumbnailView];
   // [self setBackgroundColor:[UIColor orangeColor]];
    CGSize titleSize = [self.infoModel.title sizeWithFont: [UIFont fontWithName:@"HelveticaNeue-Bold" size:14.0f]];
    self.titleLabel = [[UILabel alloc]initWithFrame:
                       CGRectMake(xPosition, 0, titleSize.width, titleSize.height)];
    [self.titleLabel setText:self.infoModel.title];
    [self.titleLabel setFont:[UIFont fontWithName:@"HelveticaNeue-Bold" size:14.0f]];
    xPosition += self.titleLabel.frame.size.width;
    //[self.titleLabel setBackgroundColor:[UIColor greenColor]];
    [self addSubview:self.titleLabel];
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc]init];
    [dateFormatter setDateFormat:@"hh:ss a"];//need to check timezone, not sure how to capitalize AM/PM
    NSString* time = [dateFormatter stringFromDate:self.infoModel.timeOfEvent];
    NSString* placeAndTime = [NSString stringWithFormat:@" - %@ at %@",time, self.infoModel.place];
    CGSize timestampSize = [placeAndTime sizeWithFont:[UIFont fontWithName:@"HelveticaNeue-Light" size:10.0f]];
    self.timestampLocationLabel =
    [[UILabel alloc]initWithFrame:
     CGRectMake(xPosition, titleSize.height - timestampSize.height -1, timestampSize.width, timestampSize.height)]; // -1 on ypos for 1 pixel padding on labels
    [self.timestampLocationLabel setFont:[UIFont fontWithName:@"HelveticaNeue-Light" size:10.0f]];
    [self.timestampLocationLabel setTextColor:[UIColor storyDetailColor]];
    //[self.timestampLocationLabel setBackgroundColor:[UIColor redColor]];
    [self.timestampLocationLabel setText:placeAndTime];
    [self addSubview:self.timestampLocationLabel];
    
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
