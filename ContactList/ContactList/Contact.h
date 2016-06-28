//
//  Contact.h
//  ContactList
//
//  Created by thomas minshull on 2016-06-28.
//  Copyright © 2016 thomas minshull. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Contact : NSObject

@property NSString* userName;
@property NSString* password;

- (instancetype)initWithUsername:(NSString *)userName andPassword:(NSString *)password;

@end
