//
//  main.m
//  ContactList
//
//  Created by thomas minshull on 2016-06-28.
//  Copyright © 2016 thomas minshull. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "Contact.h"
#import "ContactList.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        InputCollector *inputCollector = [[InputCollector alloc] init];
        ContactList *contactList = [[ContactList alloc] init];
        NSString *usernameInput;
        
        while (![usernameInput isEqualToString:@"q"]) {
            
            usernameInput = [inputCollector inputForPrompt:@"What do you want to do?"];
            
            if ([usernameInput isEqualToString:@"new"]) {
                NSString *username = [inputCollector inputForPrompt:@"Enter user name"];
                NSString *password = [inputCollector inputForPrompt:@"Enter password"];
                
                Contact *firstContact = [[Contact alloc] initWithUsername:username andPassword:password];
                
                [contactList addContact:firstContact];
            }
        }
        
        NSLog(@"see you!");
        
    }
    return 0;
}
