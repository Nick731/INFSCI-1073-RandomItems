//
//  NPPContainer.m
//  RamdomItems
//
//  Created by Nick Peters on 2/2/15.
//  Copyright (c) 2015 Nick Peters. All rights reserved.
//

#import "NPPContainer.h"

@implementation NPPContainer

- (instancetype)init
{
    _containerName = @"";
    _containedItems = [[NSMutableArray alloc] init];

    return self;
}

- (void)addItem:(NPPItem *)item
{
    [_containedItems addObject:item];
}

- (NPPItem *)itemAtIndex:(int)index
{
    return _containedItems[index];
}

- (int)_valueInDollars
{
    int totalCost = 0;
    
    for (NPPItem *item in self.items)
    {
        totalCost = totalCost + item.valueInDollars;
    }
    return totalCost;
}

- (NSString *)description
{
    NSString *descriptionString = [[NSString alloc] initWithFormat:@"%@ Total: $%d, items contained: %@",
                                   self.containerName, self.valueInDollars, self.items];
    return descriptionString;
}

- (void)setContainerName:(NSString *)name
{
    _containerName = name;
}

- (NSString *)containerName
{
    return _containerName;
}

- (NSArray *)items
{
    return [[NSArray alloc] initWithArray:_containedItems];
}

@end
