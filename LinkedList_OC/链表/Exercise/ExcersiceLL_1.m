//
//  ExcersiceLL_1.m
//  链表
//
//  Created by 肖鑫 on 2018/12/5.
//  Copyright © 2018 Eleven. All rights reserved.
//

#import "ExcersiceLL_1.h"
#import "ExcersiceNode_1.h"

@implementation ExcersiceLL_1

- (instancetype)init {
    if (self = [super init]) {
        self.head = nil;
        self.tail = self.head;
        self.tail.next = NULL;
    }
    
    return self;
}

- (instancetype)initWithHeadNode:(ExcersiceNode_1 *)headNode {
    if (self = [super init]) {
        self.head = headNode;
        self.tail = _head;
        self.tail.next = NULL;
    }
    
    return self;
}

- (void)appendValueInHead:(int)value {
    ExcersiceNode_1 *node = [[ExcersiceNode_1 alloc] initWithValue:value];
    [self appendInHead:node];
}

- (void)appendValueInTail:(int)value {
    ExcersiceNode_1 *node = [[ExcersiceNode_1 alloc] initWithValue:value];
    [self appendInTail:node];
}

- (void)appendInHead:(ExcersiceNode_1 *)node {
    node.next = self.head.next;
    self.head = node;
    self.tail = self.head;
}

- (void)appendInTail:(ExcersiceNode_1 *)node {
    if (self.head) {
        node.next = self.tail.next;
        self.tail.next = node;
        self.tail = node;
    } else {
        [self appendInHead:node];
    }
}

- (void)appendWithArray:(NSArray<NSNumber *> *)array {
    for (NSNumber *number in array) {
        if (self.head == nil) {
            [self appendValueInHead:[number intValue]];
        } else {
            [self appendValueInTail:[number intValue]];
        }
    }
}

- (void)printLinkedList {
    if (!self.head) {
        NSLog(@"链表为空！");
        return;
    }
    
    ExcersiceNode_1 *curNode = self.head;
    NSMutableArray *array = [NSMutableArray arrayWithCapacity:0];
    
    while (curNode != nil) {
        [array addObject:@(curNode.value)];
        
        curNode = curNode.next;
    }
    
    NSLog(@"链表%@ -> %@", self, array);
}

- (ExcersiceNode_1 *)reverseLinkedList:(ExcersiceNode_1 *)head {
    ExcersiceNode_1 *curNode = head;
    ExcersiceNode_1 *prevNode = [[ExcersiceNode_1 alloc] init];
    ExcersiceNode_1 *tmp = [[ExcersiceNode_1 alloc] init];
    
    while (curNode != nil) {
        tmp = curNode.next;
        curNode.next = prevNode;
        prevNode = curNode;
        curNode = tmp;
    }
    
    return prevNode;
}

- (BOOL)detectLinkedListCycle:(ExcersiceNode_1 *)head {
    if (head == nil) return NO;
    
    NSMutableSet *set = [NSMutableSet setWithCapacity:0];
    ExcersiceNode_1 *node = [[ExcersiceNode_1 alloc] initWithNode:head];
    
    while (node != nil) {
        [set addObject:node];
        
        if ([set containsObject:node.next])
            return YES;
        
        node = node.next;
    }
    
    return NO;
}

- (void)deleteNode:(ExcersiceNode_1 *)node {
    if (node == nil) {
        NSLog(@"请给个非空的结点");
        return;
    }
    
    if (node == self.head) {
        self.head = self.head.next;
        return;
    }
    
    ExcersiceNode_1 *curN = [[ExcersiceNode_1 alloc] initWithNode:self.head];
    ExcersiceNode_1 *prevN = [[ExcersiceNode_1 alloc] init];
    
    while (curN != nil) {
        if (curN == node) {
            //  如果当前前结点是要删除的结点 直接删除
            prevN.next = curN.next;
            curN = NULL;
            return;
        }
        
        prevN = curN;
        curN = curN.next;
    }
    
    NSLog(@"该链表中没有此结点");
}

- (void)deleteTheLastNthNode:(NSUInteger)index {
    ExcersiceNode_1 *curN = self.head;
    ExcersiceNode_1 *tmpN = [[ExcersiceNode_1 alloc] init]; //!<    记录前n个结点
    
    NSMutableArray<ExcersiceNode_1 *> *arr = [NSMutableArray arrayWithCapacity:0];
    
    while (curN != nil) {
        [arr addObject:curN];
        curN = curN.next;
    }
    
    if (index > arr.count) {
        NSLog(@"index 必须小于链表结点总数");
    } else if (index == arr.count) {
        //  删除头结点
#warning 待把链表修添加哨兵结点 这里就不用另外处理了
        self.head = self.head.next;
        arr.firstObject.next = NULL;
    } else {
        tmpN = arr[arr.count - index - 1];
        
        //  把要删除的结点的前一个结点的next重新定向一下 tips: 防止数组越界
        tmpN.next = arr[(arr.count - index)].next.next;
        
        //  制空要删除的结点的next指针
        arr[(arr.count - index)].next = NULL;
    }
    
    [self printLinkedList];
}


#pragma mark - Lazy
//- (ExcersiceNode_1 *)head {
//    if (!_head) {
//        _head = [[ExcersiceNode_1 alloc] init];
//    }
//    
//    return _head;
//}
//
//- (ExcersiceNode_1 *)tail {
//    if (!_tail) {
//        _head = [[ExcersiceNode_1 alloc] init];
//    }
//    
//    return _tail;
//}

@end
