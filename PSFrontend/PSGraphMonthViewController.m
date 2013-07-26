//
//  PSGraphMonthViewController.m
//  PSFrontend
//
//  Created by Jesse Chand on 7/26/13.
//  Copyright (c) 2013 Pusheen. All rights reserved.
//

#import "PSGraphMonthViewController.h"

@implementation PSGraphMonthViewController

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.scrollEnabled = YES;
        self.showsHorizontalScrollIndicator = YES;
        self.showsVerticalScrollIndicator = YES;
        self.contentSize = CGSizeMake(1500.0, 32.0);
        self.frame = CGRectMake(0, 0, 500, 900);
        self.alwaysBounceHorizontal = YES;
        self.alwaysBounceVertical = YES; 
        NSLog(@"mysize: %f %f %f %f", self.frame.origin.x, self.frame.origin.y, self.frame.size.width, self.frame.size.height);
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
