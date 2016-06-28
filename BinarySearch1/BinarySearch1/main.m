//
//  main.m
//  BinarySearch1
//
//  Created by thomas minshull on 2016-06-28.
//  Copyright © 2016 thomas minshull. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableArray *array = [@[] mutableCopy];
        
        for (int x = 0; x < 1000000; x++) {
            [array addObject:[NSNumber numberWithInteger:arc4random()]];
        }
        
        NSNumber *goal = array[array.count -1];
        
        // time linear search
        NSDate *methodStart = [NSDate date];
//
//        // testing break works properly
//        for (int x = 0; x < 5; x++) {
//            if (x == 3) break;
//            NSLog(@"test");
//        }
        for (NSNumber *n in array) {
            if ([n isEqual:goal]) break;
            NSLog(@"test");
        }
        
        NSDate *methodEnd = [NSDate date];
        NSTimeInterval executionTime = [methodEnd timeIntervalSinceDate:methodStart];
        NSLog(@"exectution time: %f", executionTime);
    }
    return 0;
}
