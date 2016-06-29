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
//    if ([newObject isLessThan:self.root] || [newObject isEqualTo:self.root]) {
//        // check if left child exists
//        if (!self.root.leftNode) {
//            BinaryTreeNode *leftChild = [[BinaryTreeNode alloc] init];
//            leftChild.object = newObject;
//            self.root.leftNode = leftChild;
//        } else {
//            self.root = self.root.leftNode;
//            [[[BinarySearchTree alloc] initWithObject:self.root.leftNode] insertObject:newObject];
//        }
//        
//    } else if ([self.root isLessThan:newObject]) {
//        
//    } else {
//        
//    }
    
}
- (BinaryTreeNode *)find:(NSObject *)object {
    return nil;
}
- (BinaryTreeNode *)deleteObject:(NSObject *)object {
    return nil;
}

@end
