//
//  main.m
//  Assignment2
//
//  Created by 谷井朝美 on 2018-04-18.
//  Copyright © 2018 Asami Tanii. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Box.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Initialize a Box using three floats
        Box *box1 = [[Box alloc] initWithHeight:10.0 andWidth:5.0 andLength:3.0];
        Box *box2 = [[Box alloc] initWithHeight:10.0 andWidth:5.0 andLength:3.0];
        Box *box3 = [[Box alloc] initWithHeight:20.0 andWidth:5.5 andLength:9.5];
        Box *box4 = [[Box alloc] initWithHeight:100.0 andWidth:7.0 andLength:12.0];
        
        
        
        // Calculate a volume of a box and check it
        NSLog(@"Volume: %0.2f", [box1 calculateVolume]);
        
        // Calculate how many times the box fits another one
        NSLog(@"box1 can fit into box2: %0.2f", [box1 calculateHowManyTimesBoxFitsAnother:box2]);
        NSLog(@"box1 can fit into  box3: %0.2f", [box1 calculateHowManyTimesBoxFitsAnother:box3]);
        NSLog(@"box2 can fit into box3: %0.2f", [box2 calculateHowManyTimesBoxFitsAnother:box3]);
        NSLog(@"box2 can fit into  box4: %0.2f", [box2 calculateHowManyTimesBoxFitsAnother:box4]);
        NSLog(@"box3 can fit into box4: %0.2f", [box3 calculateHowManyTimesBoxFitsAnother:box4]);
        
    }
    return 0;
}
