//
//  PSDayScrollView.m
//  PSFrontend
//
//  Created by Yi-Lin Jao on 7/25/13.
//  Copyright (c) 2013 Pusheen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PSDayScrollView.h"
#import "PSDayTableViewController.h"

static NSArray *_data = nil;

@implementation PSDayScrollView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.showsVerticalScrollIndicator = NO;
        self.showsHorizontalScrollIndicator = NO;
        self.decelerationRate = UIScrollViewDecelerationRateFast;
        //self.delegate = self;
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

- (void)setIndex:(NSUInteger)index
{
    _index = index;
    [self displayTable: [self tableAtIndex:index]];
}

#pragma mark - Configure scrollView to display new table

- (void)displayTable:(UITableView *)tableView
{
    [self addSubview:tableView];
}

#pragma mark TableData() methods
- (UITableView*)tableAtIndex:(NSUInteger) index
{
    return [[PSDayScrollView tableData] objectAtIndex:index];
}

+ (NSArray*)tableData
{
    if (!_data) {
        
        PSDayTableViewController *tvc1 = [[PSDayTableViewController alloc] init];
        UITableView *tv1 = tvc1.tableView;
        tv1.backgroundColor = [UIColor redColor];
        
        PSDayTableViewController *tvc2 = [[PSDayTableViewController alloc] init];
        UITableView *tv2 = tvc2.tableView;
        tv2.backgroundColor = [UIColor greenColor];
        
        PSDayTableViewController *tvc3 = [[PSDayTableViewController alloc] init];
        UITableView *tv3 = tvc3.tableView;
        tv3.backgroundColor = [UIColor blueColor];

        _data = @[tv1, tv2, tv3];
    }
    
    /*
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        NSString *path = [[NSBundle mainBundle] pathForResource:@"ImageData" ofType:@"plist"];
        NSData *plistData = [NSData dataWithContentsOfFile:path];
        NSString *error; NSPropertyListFormat format;
        data = [NSPropertyListSerialization propertyListFromData:plistData
                                                mutabilityOption:NSPropertyListImmutable
                                                          format:&format
                                                errorDescription:&error];
        if (!data) {
            NSLog(@"Unable to read image data: %@", error);
        }
    });
    */
    return _data;
}

+ (NSUInteger)tableCount
{
    /*
    static NSUInteger count = 0;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        count = [_tableData() count];
    });
    return count;
     */
    
    return [[PSDayScrollView tableData] count];
}

@end
/*
static NSString *_tableNameAtIndex(NSUInteger index)
{
    NSDictionary *info = [_tableData() objectAtIndex:index];
    return [info valueForKey:@"name"];
}
*/