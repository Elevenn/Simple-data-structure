//
//  ExcersiceLL_1.h
//  链表
//
//  Created by 肖鑫 on 2018/12/5.
//  Copyright © 2018 Eleven. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class ExcersiceNode_1;
@interface ExcersiceLL_1 : NSObject

@property (nonatomic, strong, nullable) ExcersiceNode_1 *head;
@property (nonatomic, strong, nullable) ExcersiceNode_1 *tail;

- (instancetype)init;
- (instancetype)initWithHeadNode:(ExcersiceNode_1 *)headNode;

- (void)appendValueInHead:(int)value;
- (void)appendValueInTail:(int)value;

- (void)appendInHead:(ExcersiceNode_1 *)node;
- (void)appendInTail:(ExcersiceNode_1 *)node;
- (void)printLinkedList;

- (void)appendWithArray:(NSArray<NSNumber *> *)array;

- (void)deleteNode:(ExcersiceNode_1 *)node;
- (void)deleteTheLastNthNode:(NSUInteger)index;

/**
 反转链表

 @param head 链表头
 @return 反转后的链表头
 */
- (ExcersiceNode_1 *)reverseLinkedList:(ExcersiceNode_1 *)head;

/**
 检测链表是否有环

 @param head 需要被检查的链表表头
 @return BOOL
 */
- (BOOL)detectLinkedListCycle:(ExcersiceNode_1 *)head;


@end

NS_ASSUME_NONNULL_END
