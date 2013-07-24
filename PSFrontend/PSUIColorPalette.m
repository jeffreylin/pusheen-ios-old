//
//  PSUIColorPalette.m
//  PSFrontend
//
//  Created by Jessica Liang on 7/23/13.
//  Copyright (c) 2013 Pusheen. All rights reserved.
//

#import "PSUIColorPalette.h"

//Colors for Feed view:
extern UIColor* storyContentTextColor;
extern UIColor* storyTitleColor;
extern UIColor* storyDetailColor;
extern UIColor* newStoryTextColor;
extern UIColor* viewBackgroundColor;
extern UIColor* navigationBarTitleColor;
extern UIColor* navigationBarColor;

@implementation PSUIColorPalette

UIColor* storyContentTextColor(void)
{
    return [[UIColor alloc] initWithRed:0 green:0 blue:0 alpha:1.0];
}
UIColor* storyTitleColor(void)
{
    return [[UIColor alloc] initWithRed:0 green:0 blue:0 alpha:1.0];
}
UIColor* storyDetailColor(void)
{
    return [[UIColor alloc] initWithRed:119 green:119 blue:119 alpha:1.0];
}
UIColor* newStoryTextColor(void)
{
    return [[UIColor alloc] initWithRed:82 green:130 blue:89 alpha:1.0];
}
UIColor* viewBackgroundColor(void)
{
    return [[UIColor alloc] initWithRed:48 green:48 blue:48 alpha:1.0];
}
UIColor* navigationBarTitleColor(void)
{
    return [[UIColor alloc] initWithRed:255 green:255 blue:255 alpha:1.0];
}
UIColor* navigationBarColor(void) //
{
    return [[UIColor alloc] initWithRed:27 green:27 blue:27 alpha:1.0];
}

@end
