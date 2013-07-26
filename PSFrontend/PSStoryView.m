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
        self.header = [[PSFeedStoryHeader alloc] initWithFrame:CGRectMake(12, 12, self.frame.size.width - 24, 32)];
        [self addSubview:self.header];
    }
    return self;
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
