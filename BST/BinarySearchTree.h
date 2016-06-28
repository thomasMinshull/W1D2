//
//  BinarySearchTree.h
//  BST
//
//  Created by thomas minshull on 2016-06-28.
//  Copyright © 2016 thomas minshull. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BinaryTreeNode.h"

@interface BinarySearchTree : NSObject

@property (strong, nonatomic) BinaryTreeNode *root;

- (instancetype)initWithObject:(NSObject *)object;
- (void)insertObject:(NSObject *)newObject;
- (BinaryTreeNode *)find:(NSObject *)object;
- (BinaryTreeNode *)deleteObject:(NSObject *)object;

@end
