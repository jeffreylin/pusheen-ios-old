//
//  PSGraphSelectionStore.m
//  PSFrontend
//
//  Created by Hansen Qian on 7/25/13.
//  Copyright (c) 2013 Pusheen. All rights reserved.
//

#import "PSGraphSelectionStore.h"
#import "PSGraphSelectionCellModel.h"

@interface PSGraphSelectionStore () {

    NSMutableArray *_typesOfContent;

}



@end

@implementation PSGraphSelectionStore

+ (PSGraphSelectionStore *)graphSelectionStore {
    static PSGraphSelectionStore *sharedStore = nil;
    if (!sharedStore) {
        sharedStore = [[super allocWithZone:nil] init];
    }
    return sharedStore;
}

+ (id)allocWithZone:(struct _NSZone *)zone {
    return [self graphSelectionStore];
}

- (id)init {
    if (self = [super init]) {
        _typesOfContent = [[NSMutableArray alloc] init];
        [_typesOfContent addObjectsFromArray:@[@"Twitter", @"Hours slept", @"Music", @"Miles walked", @"Weather", @"Weather", @"Check-ins", @"Mood"]];
    }
    return self;
}


- (PSGraphSelectionCellModel*)modelAtIndexPath:(NSIndexPath *)indexPath {
    PSGraphSelectionCellModel *graphSelectionCellModel = [[PSGraphSelectionCellModel alloc] init];
    [graphSelectionCellModel setTitle:(NSString *) [_typesOfContent objectAtIndex:[indexPath row]]];
    return graphSelectionCellModel;
}



@end
