//
//  iOSServicesDataSource.h
//  PhotoStream
//
//  Created by Christopher White on 8/4/11.
//  Copyright 2011 Mad Races, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Three20/Three20.h"

@protocol iOSSServiceProtocol;

@protocol iOSServicesDataSourceProtocol <TTModel>

/**
 * The title of this collection of tags.
 */
@property (nonatomic, copy) NSString* title;

/**
 * The total number of feed entries in the source, independent of the number that have been loaded.
 */
@property (nonatomic, readonly) NSInteger numberOfObjects;

/**
 * The maximum index of feed entries that have already been loaded.
 */
@property (nonatomic, readonly) NSInteger maxObjectIndex;

- (id<iOSSServiceProtocol>)objectAtIndex:(NSInteger)index;

@end

@interface iOSServicesDataSource : NSObject <TTTableViewDataSource, iOSServicesDataSourceProtocol> {
    id<TTModel> _model;
}

@property(nonatomic, readonly, assign)  NSInteger count;

@end