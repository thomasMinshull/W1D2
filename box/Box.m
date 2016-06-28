//
//  Box.m
//  box
//
//  Created by thomas minshull on 2016-06-28.
//  Copyright © 2016 thomas minshull. All rights reserved.
//

#import "Box.h"

@implementation Box

- (instancetype)initWithHeight:(float)height Width:(float)width andLenght:(float)length {
    self = [super init];
    if (self) {
        self.length = length;
        self.height = height;
        self.width = width;
    }
    return self;
}

@end
