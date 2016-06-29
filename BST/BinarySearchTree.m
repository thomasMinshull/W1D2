//
//  BinarySearchTree.m
//  BST
//
//  Created by thomas minshull on 2016-06-28.
//  Copyright © 2016 thomas minshull. All rights reserved.
//

#import "BinarySearchTree.h"

@implementation BinarySearchTree

- (instancetype)initWithObject:(NSObject *)object {
    self = [super init];
    if (self) {
        self.root = [[BinaryTreeNode alloc] init];
        self.root.object = object;
    }
    return self;
}

- (void)insertObject:(NSObject *)newObject {
    [self.root insert:newObject];
    
}
- (BinaryTreeNode *)find:(NSObject *)object {
    if ([self.root isLessThan:object]) {
        <#statements#>
    }
}
- (BinaryTreeNode *)deleteObject:(NSObject *)object {
    return nil;
}

@end
