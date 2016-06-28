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
    
        // insert code here...
        NSLog(@"Cube Volume: %f", cube.volume);
    }
    return 0;
}
