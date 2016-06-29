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
        if (!self.leftNode) {
            // if no left child, make newObject left child
            BinaryTreeNode *leftChild = [[BinaryTreeNode alloc] init];
            leftChild.object = newObject;
            self.leftNode = leftChild;
        } else {
            // else call recursively on left child
            [self.leftNode insert:newObject];
        }
    } else {
        if (!self.rightNode) {
            // if no left child, make newObject right child
            BinaryTreeNode *rightChild = [[BinaryTreeNode alloc] init];
            rightChild.object = newObject;
            self.rightNode = rightChild;
        } else {
            // else call recursively on right child
            [self.rightNode insert:newObject];
        }
    }
}

@end
