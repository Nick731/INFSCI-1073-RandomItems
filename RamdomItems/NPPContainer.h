//
//  NPPContainer.h
//  RamdomItems
//
//  Created by Nick Peters on 2/2/15.
//  Copyright (c) 2015 Nick Peters. All rights reserved.
//

#import "NPPItem.h"

@interface NPPContainer : NPPItem
{
    NSMutableArray *_containedItems;
    NSString *_containerName;

} 

- (NSArray *)items;

- (void)setContainerName:(NSString *)str;
- (NSString *)containerName;

- (void)addItem:(NPPItem *)item;
- (NPPItem *)itemAtIndex:(int)index;

- (int)_valueInDollars;

@end
