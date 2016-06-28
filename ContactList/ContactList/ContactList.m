//
//  ContactList.m
//  ContactList
//
//  Created by thomas minshull on 2016-06-28.
//  Copyright © 2016 thomas minshull. All rights reserved.
//

#import "ContactList.h"

@implementation ContactList


-(void)addContact:(Contact *)newContact {
    if (!self.list) {
        self.list = [[NSMutableArray alloc] init];
    }
    
    [self.list addObject:newContact];
}


-(void)listContacts {
    NSLog(@"Contacts:");
    for (Contact *contact in self.list) {
        NSLog(@"%d:%@",(int)[self.list indexOfObject:contact], contact.userName);
    }
}
@end
