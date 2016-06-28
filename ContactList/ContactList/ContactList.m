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
    [self.list addObject:newContact];
}
@end
