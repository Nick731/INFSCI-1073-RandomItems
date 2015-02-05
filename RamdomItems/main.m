//
//  main.m
//  RamdomItems
//
//  Created by Nick Peters on 2/2/15.
//  Copyright (c) 2015 Nick Peters. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NPPItem.h"
#import "NPPContainer.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSMutableArray *items = [[NSMutableArray alloc] init];
        
        //10 random items are created.
        for (int i = 0; i < 10; i++) {
            NPPItem *item = [NPPItem randomItem];
            [items addObject:item];
        }
        
        //The 10 items are outputted.
        for (NPPItem *item in items) {
            NSLog(@"%@", item);
        }
        
        //10 items are destroyed.
        items = nil;
    
        // Container Created and random items added to it.
        NPPContainer *container1 = [[NPPContainer alloc] init];
        
        [container1 setContainerName:@"1st Container"];
        [container1 addItem:[NPPItem randomItem]];
        [container1 addItem:[NPPItem randomItem]];
        [container1 addItem:[NPPItem randomItem]];
        [container1 addItem:[NPPItem randomItem]];
        [container1 addItem:[NPPItem randomItem]];
        [container1 addItem:[NPPItem randomItem]];
        
        // Container Created and random items added to it.
        NPPContainer *container2 = [[NPPContainer alloc] init];
        
        [container2 setContainerName:@"2nd Container"];
        [container2 addItem:[NPPItem randomItem]];
        [container2 addItem:[NPPItem randomItem]];
        [container2 addItem:[NPPItem randomItem]];
        [container2 addItem:[NPPItem randomItem]];
        
        // Container Created and random items added to it.
        NPPContainer *container3 = [[NPPContainer alloc] init];
        
        [container3 setContainerName:@"3rd Container"];
        [container3 addItem:[NPPItem randomItem]];
        [container3 addItem:[NPPItem randomItem]];
        
        
        //Containers and contained items are outputted.
        NSLog(@"Container: %@", container1);
        NSLog(@"Container: %@", container2);
        NSLog(@"Container: %@", container3);
        
        //Containers are destroyed.
        container1 = nil;
        container2 = nil;
        container3 = nil;
        
    }
    return 0;
}
