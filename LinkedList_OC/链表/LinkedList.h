//
//  LinkedList.h
//  链表
//
//  Created by 肖鑫 on 2018/12/4.
//  Copyright © 2018 Eleven. All rights reserved.
//

#import <Foundation/Foundation.h>


NS_ASSUME_NONNULL_BEGIN

@class Node;
@interface LinkedList : NSObject

@property (nonatomic, strong, nullable) Node *head;
@property (nonatomic, strong) Node *tail;
@property (nonatomic, assign, getter=count) int count;  //  应该不能这么写 会有 bug 现在只是用来显示链表有几个个数

- (instancetype)initWithData:(int)data;

- (void)printLinkedList;    //!<    打印链表
- (void)appendInLinkTail:(int)data;   //!<    在链尾插入结点
- (void)appendInLinkHead:(int)data;   //!<    在链头插入结点
- (void)append:(int)data afterNodeP:(Node *)p;    //!<    插入数据到结点p后面

/**
 寻找结点 node 前后的结点

 @param node 需要寻找位置的结点
 @return @[@"node prev 的结点", @"node next 的结点"]
 */
//- (NSArray *)find:(Node *)node;

- (void)deleteNode:(Node *)node;



@end

NS_ASSUME_NONNULL_END
