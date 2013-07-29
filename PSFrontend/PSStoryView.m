//
//  PSStoryView.m
//  PSFrontend
//
//  Created by Jessica Liang on 7/25/13.
//  Copyright (c) 2013 Pusheen. All rights reserved.
//

#import "PSStoryView.h"

@implementation PSStoryView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setBackgroundColor:[UIColor whiteColor]];
        
    }
    return self;
}
- (void)layoutSubviews
{
    self.header = [[PSFeedStoryHeader alloc]
                   initWithFrame:CGRectMake(12, 8, self.frame.size.width - 24, self.frame.size.height  - 8)
                   andModel:self.infoModel];
    [self addSubview:self.header];
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
