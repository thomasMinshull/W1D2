//
//  BinaryTreeNode.h
//  BST
//
//  Created by thomas minshull on 2016-06-28.
//  Copyright © 2016 thomas minshull. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BinaryTreeNode : NSObject

@property (nonatomic, strong) NSObject *object;
@property (nonatomic, strong) BinaryTreeNode *leftNode;
@property (nonatomic, strong) BinaryTreeNode *rightNode;
@property (nonatomic, strong) BinaryTreeNode *parent;

- (BOOL)isLeftChildOfParent;

- (void)insert:(NSObject *)newObject;

@end
