//
//  main.m
//  box
//
//  Created by thomas minshull on 2016-06-28.
//  Copyright © 2016 thomas minshull. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Box.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Box *cube = [[Box alloc] initWithHeight:1.0 Width:1.0 andLenght:100.1];
    
        NSLog(@"Cube Volume: %f", cube.volume);
        
        Box *smallCube = [[Box alloc] initWithHeight:0.5 Width:0.5 andLenght:0.5];
        
        NSLog(@"Small Cube Volume: %f", smallCube.volume);
        
        NSLog(@"small cube can fit %d cubes",[smallCube canContainBox:cube]);
        
        NSLog(@"cube can fit %d cubes",[cube canContainBox:smallCube]);
        
        NSLog(@"This better be 1: %d", [cube canContainBox:cube]);
        
        NSLog(@"This better be 1: %d", [smallCube canContainBox:smallCube]);
        
    }
    return 0;
}
