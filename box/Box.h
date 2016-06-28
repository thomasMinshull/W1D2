//
//  Box.h
//  box
//
//  Created by thomas minshull on 2016-06-28.
//  Copyright © 2016 thomas minshull. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Box : NSObject

@property float height;
@property float width;
@property float length;
@property (readonly) float volume;

- (instancetype)initWithHeight:(float)height Width:(float)width andLenght:(float)length;

@end
