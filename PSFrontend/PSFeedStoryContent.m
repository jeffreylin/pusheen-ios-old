//
//  PSFeedStoryContent.m
//  PSFrontend
//
//  Created by Jessica Liang on 7/23/13.
//  Copyright (c) 2013 Pusheen. All rights reserved.
//

#import "PSFeedStoryContent.h"
#import "PSFeedStoryCell.h"


@implementation PSFeedStoryContent

- (id)initWithFrame:(CGRect)frame andContentType: (contentType)type
{
    if (self = [super initWithFrame:frame]) {
        self.typeOfContent = type;
        switch (type)
        case TEXT_ENTRY:
        //do something
        case EVENT
        //do something else
    }
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
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
