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
        self.root.parent = nil;
    }
    return self;
}

- (void)insertObject:(NSObject *)newObject {
    // does the new object go to the left root?
    if (newObject <= self.root) {
        // Yes! then put it on the left
        if (self.root.leftNode) {
            // root has a left Node better check what side of the left node this newObject goes on
            BinaryTreeNode *tempParent = self.root;
            self.root = self.root.leftNode;
            self.root.parent = tempParent;
        } else {
            // root doesn't have a left child, we can put the newObject here
            self.root.leftNode = [self createNewNodeWithObject:newObject];
            // Oh wait, we are recursively working on sub-trees of the Binary Search tree.
            // we better get the whole tree back, (aka move the root back to the original root)
            // we can use recursion for this too!
            self.root = [self returnFromSubtreeRoot:self];
            
        }
    } else {
        // NO, then put it on the right
        if (self.root.rightNode ) {
            // root has a right node better check which site of this node the childe goes on
        } else {
            // no right child, lets stick the new object here
        }
    }
    
}
- (BinaryTreeNode *)find:(NSObject *)object {
    return nil;
}
- (BinaryTreeNode *)deleteObject:(NSObject *)object {
    return nil;
}

- (BinaryTreeNode *)returnFromSubtreeRoot:(BinarySearchTree *)subTree {
    
    // are we already at the top of the tree?
    if (subTree.root.parent != nil) {
        // Not at the top of the tree? move root up one (to parent) and call method recursively
        subTree.root = subTree.root.parent;
        // repeate recursively
        [self returnFromSubtreeRoot:subTree];
    }
    
    // finally reached the top of the tree
    return self.root;
}

- (BinaryTreeNode *)createNewNodeWithObject:(NSObject *)newObject {
    BinaryTreeNode *newChild = [[BinaryTreeNode alloc] init];
    newChild.object = newObject;
    return newChild;
}

@end
