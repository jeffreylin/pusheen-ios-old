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

- (UIImage *)imageWithImage:(UIImage *)image convertToSize:(CGSize)size;

@end
@implementation PSFeedStoryHeader

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        NSLog(@"%f", self.frame.size.height);
        [self setBackgroundColor:[UIColor whiteColor]];
        self.typeOfContent = TEXT_ENTRY;

        self.title = @"Title";
        self.timestamp = [NSDate date]; //change later
        self.place = @"- 12:00 AM at Facebook Campus";
        self.thumbnail = [UIImage imageNamed:@"thumbCalendar"];
        self.thumbnailView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 16, 16)];
        [self.thumbnailView setImage:self.thumbnail];
        //[self.thumbnailView setBackgroundColor:[UIColor storyTitleColor]];
        [self addSubview:self.thumbnailView];
        
        self.titleLabel = [[UILabel alloc]initWithFrame:CGRectMake(self.thumbnailView.frame.size.width + 16, 6, 30, self.frame.size.height - 6)];
        [self.titleLabel setText:self.title];
        self.titleLabel.font = [UIFont fontWithName:@"HelveticaNeue-Bold" size:14.0f];
        [self.titleLabel setTextColor:[UIColor storyTitleColor]];
        [self.titleLabel setBackgroundColor:[UIColor whiteColor]];
        
        [self addSubview:self.titleLabel];
        
        self.timestampLocationLabel = [[UILabel alloc]initWithFrame:CGRectMake(self.titleLabel.frame.size.width + self.thumbnail.size.width + 16
                                                                               , 6, 200, self.frame.size.height - 6)];
        [self.timestampLocationLabel setBackgroundColor:[UIColor whiteColor]];
        [self.timestampLocationLabel setText:self.place];
        self.timestampLocationLabel.font = [UIFont fontWithName:@"HelveticaNeue-Light" size:10.0f];
        self.timestampLocationLabel.textColor = [UIColor storyDetailColor];
        [self addSubview:self.timestampLocationLabel];
        
    }
    return self;
}
- (UIImage *)imageWithImage:(UIImage *)image convertToSize:(CGSize)size
{
    UIGraphicsBeginImageContext(size);
    [image drawInRect:CGRectMake(0, 0, size.width, size.height)];
    UIImage *destImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return destImage;
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
