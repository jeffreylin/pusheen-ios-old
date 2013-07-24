//
//  PSFeedStoryCell.m
//  PSFrontend
//
//  Created by Jessica Liang on 7/23/13.
//  Copyright (c) 2013 Pusheen. All rights reserved.
//

#import "PSFeedStoryCell.h"
#import "PSFeedStoryHeader.h"
@interface PSFeedStoryCell()

@end

@implementation PSFeedStoryCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.content = [[UIView alloc] initWithFrame: CGRectMake(12, 12, self.frame.size.width - 24, self.frame.size.height - 24)];
        self.header = [[PSFeedStoryHeader alloc]initWithFrame:self.content.size];//NEED TO CHANGE THIS LATER
        [self.content addSubview: self.header];
        
    }
    return self;
}
- (void)setContentType: (contentType)type
{
    self.typeOfContent = type;
    [self.header setTypeOfContent:type];
    
}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
