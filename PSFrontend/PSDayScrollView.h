//
//  PSDayScrollView.h
//  PSFrontend
//
//  Created by Yi-Lin Jao on 7/25/13.
//  Copyright (c) 2013 Pusheen. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PSDayScrollView : UIScrollView

@property (nonatomic) NSUInteger index;

+ (NSUInteger)tableCount;
+ (UITableView *)tableAtIndex:(NSUInteger)index;

@end
