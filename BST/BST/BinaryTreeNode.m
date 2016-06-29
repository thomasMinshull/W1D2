//
//  BinaryTreeNode.m
//  BST
//
//  Created by thomas minshull on 2016-06-28.
//  Copyright © 2016 thomas minshull. All rights reserved.
//

#import "BinaryTreeNode.h"

@implementation BinaryTreeNode

- (void)insert:(NSObject *)newObject {
    if ([newObject isLessThan:self.object] || [newObject isEqualTo:self.object]) {
        // check if left child exists
        if (!self.leftNode) {
            BinaryTreeNode *leftChild = [[BinaryTreeNode alloc] init];
            leftChild.object = newObject;
            self.leftNode = leftChild;
        } else {
            [self.leftNode insert:newObject];
        }
    } else {
        // check if right child exists
        if (!self.rightNode) {
            BinaryTreeNode *rightChild = [[BinaryTreeNode alloc] init];
            rightChild.object = newObject;
            self.rightNode = rightChild;
        } else {
            [self.rightNode insert:newObject];
        }
    }
}

@end
