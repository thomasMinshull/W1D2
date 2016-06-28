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

- (float)volume {
    return self.length * self.height * self.width;
}

- (int)canContainBox:(Box *)box {
    if ([self isSmallerBox:box]) {
        NSLog(@"The Box Provided doesn't fit");
        return 0;
    } else {
        NSNumber *result = [NSNumber numberWithFloat:(self.volume / box.volume)];
        return (int)[result integerValue];
    }
}

- (bool)isSmallerBox:(Box *)box {
    if (self.volume >= box.volume) {
        return false;
    } else {
        return true;
    }
}
@end
