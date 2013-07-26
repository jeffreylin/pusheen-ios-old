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
extern UIColor* separatorColor;

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
    return [[UIColor alloc] initWithRed:0.466 green:0.466 blue:0.466 alpha:1.0];
}

+ (UIColor *) newStoryTextColor
{
    return [[UIColor alloc] initWithRed:0.322 green:0.510 blue:0.349 alpha:1.0];
}

+ (UIColor *) viewBackgroundColor
{
    return [[UIColor alloc] initWithRed:0.188 green:0.188 blue:0.188 alpha:1.0];
}

+ (UIColor *) navigationBarTitleColor
{
    return [[UIColor alloc] initWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
}

+ (UIColor *) navigationBarColor
{
    return [[UIColor alloc] initWithRed:0.106 green:0.106 blue:0.106 alpha:1.0];
}

+ (UIColor *) separatorColor
{
    return [[UIColor alloc] initWithRed:0.80 green:0.80 blue:0.80 alpha:1.0];
}

@end
