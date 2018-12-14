//
//  LinkedList.m
//  链表
//
//  Created by 肖鑫 on 2018/12/4.
//  Copyright © 2018 Eleven. All rights reserved.
//

#import "LinkedList.h"
#import "Node.h"

@implementation LinkedList

- (instancetype)init {
    if (self = [super init]) {
        //  初始化链表头
        self.head = nil;
        //  刚初始化完的链表 head 的 next 指针为 nil
        self.head.next = nil;
        //  刚初始化的链表的链表尾为链表头
        self.tail = self.head;
    }
    
    return self;
}

- (instancetype)initWithData:(int)data {
    if (self = [super init]) {
        //  初始化链表头
        self.head = [Node new];
        //  把 data 赋值给 链表头
        self.head.data = data;
        //  刚初始化完的链表 head 的 next 指针为 nil
        self.head.next = nil;
        //  刚初始化的链表的链表尾为链表头
        self.tail = self.head;
    }
    
    return self;
}

- (void)printLinkedList {
    if (self.head == nil) return;
    
    Node *node = self.head;
    
    while (node != nil) {
        NSLog(@"%d", node.data);
        node = node.next;
    }
}

- (void)appendInLinkTail:(int)data {
    Node *node = [Node new];
    
    //  1. 赋值给 node
    node.data = data;
    //  2. 把链尾的next指针给到 node
    node.next = self.tail.next;
    //  3. 再把 node 给 tail 的 next
    self.tail.next = node;
    //  4. 把 node 赋值给 链尾
    self.tail = node;
}

- (void)appendInLinkHead:(int)data {
    Node *node = [[Node alloc] initWithData:data];
    
    node.next = self.head;
    self.head = node;
}

- (void)append:(int)data afterNodeP:(Node *)p {
    Node *node = [[Node alloc] initWithData:data];
    
    node.next = p.next;
    p.next = node;
}

//- (NSArray *)find:(Node *)node {
//    if (self.head == nil) return @[];
//    
//    if (self.head.next == nil) {
//        if (self.head != node) return @[];
//    }
//    
//    return @[];
//}

- (void)deleteNode:(Node *)node {
    if (node == self.head) {
        if (self.count == 1) {
            self.head = nil;
        } else {
            self.head = self.head.next;
        }
        
        return;
    }
    
    Node *prevNode = [Node new];
    prevNode = self.head;
    
    while (prevNode.next != nil) {
        if (node == prevNode.next) {
            prevNode.next = node.next;
            node = nil;
            
            return;
        }
        prevNode = prevNode.next;
    }
    
    NSLog(@"没有找到该结点");
}


#pragma mark - Getter & Setter
- (int)count {
    if (self.head == nil) return 0;
    
    Node *node = self.head;
    
    while (node != nil) {
        ++_count;
        node = node.next;
    }
    return _count;
}



#pragma mark - Lazy
- (Node *)tail {
    if (!_tail) {
        _tail = [Node new];
        _tail.data = 0;
        _tail.next = nil;
    }
    
    return _tail;
}




@end
