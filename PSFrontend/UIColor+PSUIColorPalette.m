//
//  UIColor+PSUIColorPalette.m
//  PSFrontend
//
//  Created by Hansen Qian on 7/24/13.
//  Copyright (c) 2013 Pusheen. All rights reserved.
//

#import "UIColor+PSUIColorPalette.h"
//Colors for Feed view:
extern UIColor* storyContentTextColor;
extern UIColor* storyTitleColor;
extern UIColor* storyDetailColor;
extern UIColor* newStoryTextColor;
extern UIColor* viewBackgroundColor;
extern UIColor* navigationBarTitleColor;
extern UIColor* navigationBarColor;

@implementation UIColor (PSUIColorPalette)

+ (UIColor *)storyContentTextColor
{
    return [[UIColor alloc] initWithRed:0 green:0 blue:0 alpha:1.0];
}

+ (UIColor *)storyTitleColor
{
    return [[UIColor alloc] initWithRed:0 green:0 blue:0 alpha:1.0];
}

+ (UIColor *) storyDetailColor
{
    return [[UIColor alloc] initWithRed:119 green:119 blue:119 alpha:1.0];
}

+ (UIColor *) newStoryTextColor
{
    return [[UIColor alloc] initWithRed:82 green:130 blue:89 alpha:1.0];
}

+ (UIColor *) viewBackgroundColor
{
    return [[UIColor alloc] initWithRed:48 green:48 blue:48 alpha:1.0];
}

+ (UIColor *) navigationBarTitleColor
{
    return [[UIColor alloc] initWithRed:255 green:255 blue:255 alpha:1.0];
}

+ (UIColor *) navigationBarColor
{
    return [[UIColor alloc] initWithRed:27 green:27 blue:27 alpha:1.0];
}
@end
