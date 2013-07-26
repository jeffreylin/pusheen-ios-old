//
//  PSGraphSelectionStore.h
//  PSFrontend
//
//  Created by Hansen Qian on 7/25/13.
//  Copyright (c) 2013 Pusheen. All rights reserved.
//

#import <Foundation/Foundation.h>

@class PSGraphSelectionCellModel;

@interface PSGraphSelectionStore : NSObject

+ (PSGraphSelectionStore *)graphSelectionStore;

@property (strong, nonatomic) NSArray *typesOfContent;

- (PSGraphSelectionCellModel *)modelAtIndexPath:(NSIndexPath *)indexPath;

@end
