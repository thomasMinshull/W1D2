//
//  InputCollector.m
//  ContactList
//
//  Created by thomas minshull on 2016-06-28.
//  Copyright © 2016 thomas minshull. All rights reserved.
//

#import "InputCollector.h"

@implementation InputCollector

-(NSString *)inputForPrompt:(NSString *)promptString {
    char inputChars[255];
    
    NSLog(@"%@",promptString);
    fgets(inputChars, 255, stdin);
    
    NSString *inputString = [[NSString stringWithUTF8String:inputChars] stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceAndNewlineCharacterSet]];
    
    return inputString;
}

@end
