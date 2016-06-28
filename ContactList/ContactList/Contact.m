//
//  Contact.m
//  ContactList
//
//  Created by thomas minshull on 2016-06-28.
//  Copyright © 2016 thomas minshull. All rights reserved.
//

#import "Contact.h"

@implementation Contact

- (instancetype)initWithUsername:(NSString *)userName andPassword:(NSString *)password {
    self = [super init];
    if (self) {
        _userName = userName;
        _password = password;
    }
    return self;
}
@end
