//
//  PSFeedCellStore.h
//  PSFrontend
//
//  Created by Hansen Qian on 7/25/13.
//  Copyright (c) 2013 Pusheen. All rights reserved.
//

#import <Foundation/Foundation.h>

@class PSFeedCellModel;

@interface PSFeedCellStore : NSObject

+ (PSFeedCellStore *)feedCellStore;

- (PSFeedCellModel *)modelAtIndexPath:(NSIndexPath *)indexPath;

@end
