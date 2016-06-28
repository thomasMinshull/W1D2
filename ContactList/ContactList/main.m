//
//  main.m
//  ContactList
//
//  Created by thomas minshull on 2016-06-28.
//  Copyright © 2016 thomas minshull. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        InputCollector *inputCollector = [[InputCollector alloc] init];
        NSString *usernameInput;
        
        while (![usernameInput isEqualToString:@"q"]) {
            
            usernameInput = [inputCollector inputForPrompt:@"Enter your username"];
            
        }
        
        NSLog(@"see you!");
        
    }
    return 0;
}
