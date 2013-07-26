//
//  PSFeedCellStore.m
//  PSFrontend
//
//  Created by Hansen Qian on 7/25/13.
//  Copyright (c) 2013 Pusheen. All rights reserved.
//

#import "PSFeedCellStore.h"
#import "PSFeedCellModel.h"

@interface PSFeedCellStore () {

}

@end

@implementation PSFeedCellStore

+ (PSFeedCellStore *)feedCellStore {
    static PSFeedCellStore *feedCellStore = nil;
    if (!feedCellStore) {
        feedCellStore = [[PSFeedCellStore alloc] init];
    }
    return feedCellStore;
}

- (id)init {
    if (self = [super init]) {

    }
    return self;
}

- (PSFeedCellModel *)modelAtIndexPath:(NSIndexPath *)indexPath {
    PSFeedCellModel *feedCellModel = [[PSFeedCellModel alloc] init];
    // Customize
    return feedCellModel;
}


@end
