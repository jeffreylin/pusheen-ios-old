//
//  PSUIColorPalette.m
//  PSFrontend
//
//  Created by Jessica Liang on 7/23/13.
//  Copyright (c) 2013 Pusheen. All rights reserved.
//

#import "PSUIColorPalette.h"

@implementation PSUIColorPalette
UIColor* storyContentTextColor(void)
{
    return [[UIColor alloc] initWithRed:128 green:128 blue:128 alpha:1.0];
}
UIColor* storyTitleColor(void)
{
    return [[UIColor alloc] initWithRed:0 green:0 blue:0 alpha:1.0];
}
UIColor* storyDetailColor(void)
{
    return [UIColor grayColor];
}
UIColor* storyCardBackgroundColor
{
    return [UIColor grayColor];
}
UIColor* viewBackgroundColor
{
    return [UIColor grayColor];
}
UIColor* editTagColor
{
    return [UIColor grayColor];
}
UIColor* navigationBarTitleColor
{
    return [UIColor grayColor];
}
UIColor* navigationBarColor
{
    return [UIColor grayColor];
}
@end
