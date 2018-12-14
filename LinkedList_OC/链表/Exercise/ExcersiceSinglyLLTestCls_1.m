//
//  ExcersiceSinglyLLTestCls_1.m
//  链表
//
//  Created by 肖鑫 on 2018/12/5.
//  Copyright © 2018 Eleven. All rights reserved.
//

#import "ExcersiceSinglyLLTestCls_1.h"
#import "ExcersiceLL_1.h"
#import "ExcersiceNode_1.h"

@implementation ExcersiceSinglyLLTestCls_1

- (void)chuliLL {
    ExcersiceLL_1 *ll = [[ExcersiceLL_1 alloc] init];
    
    [ll appendWithArray:@[@(2), @(3), @(4), @(5), @(11)]];
    
    ExcersiceLL_1 *ll1 = [[ExcersiceLL_1 alloc] init];
    
    [ll1 appendWithArray:@[@(1), @(4)]];
    
    [ll printLinkedList];
    [ll1 printLinkedList];
    
    //  反转链表
    //[self reverseLinkedList:ll];
    
    //  判断是否有环
    //[self detectLinkedListCycle:ll];
    
    //  合并两个有序的链表
    //[self uniteLinkedList:@[ll, ll1]];
    
    //  删除倒数第 n 个结点
    [self deleteNodeOfLinkedListNode:ll backwardOfIndex:1];
}

#pragma mark 反转链表
- (void)reverseLinkedList:(ExcersiceLL_1 *)ll {
    ll.head = [ll reverseLinkedList:ll.head];
    
    [ll printLinkedList];
}

#pragma mark 判断是否有环
- (void)detectLinkedListCycle:(ExcersiceLL_1 *)ll {
    //ll.tail.next = ll.head;
    
    [ll detectLinkedListCycle:ll.head];
    NSLog(@"是否有环 - %d", [ll detectLinkedListCycle:ll.head]);
}

#pragma mark 合并两个有序的链表
/** 想法
 *  1. 先将所有链表的数据全部加到第一个链表里 然后排序
 *  2. 两个链表之间对比结点 然后插入
 */
- (void)uniteLinkedList:(NSArray<ExcersiceLL_1 *> *)array {
    //  1. 先将所有链表的数据全部加到第一个链表里 然后排序
    
    ExcersiceLL_1 *a = array[0];
    ExcersiceLL_1 *b = array[1];
    
    if (a.head == nil && b.head == nil) return;
    
    a.tail.next = b.head;
    
    ExcersiceNode_1 *tmp = a.head;
    NSMutableArray *arr = [NSMutableArray arrayWithCapacity:0];
    
    while (tmp != nil) {
        [arr addObject:@(tmp.value)];
        tmp = tmp.next;
    }
    
    arr = [arr sortedArrayUsingComparator:^NSComparisonResult(NSNumber *obj1, NSNumber *obj2) {
        return [obj1 compare:obj2];
    }].mutableCopy;
    
    a.head = NULL;
    [a appendWithArray:arr.copy];
    
    [a printLinkedList];
}

#pragma mark 删除链表倒数第 n 个结点
/** 想法
 *  1. 快慢指针 (n, 1)
 *  2. 遍历结点的时候b顺便把它存入 set 中 然后再删除
 *  3. 每移动n格 记录下cur结点
 *
 *  1 -> 2 -> 3 -> 4 -> 5 -> 6 -> NULL
 */
- (void)deleteNodeOfLinkedListNode:(ExcersiceLL_1 *)ll backwardOfIndex:(NSUInteger)index {
    [ll deleteTheLastNthNode:1];
}

#pragma mark 求链表的中间结点
/** 想法
 *  把链表变成数组 再取中间值
 */

#pragma mark 两两交换链表中的结点


@end
