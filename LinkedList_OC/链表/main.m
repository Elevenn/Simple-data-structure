//
//  main.m
//  链表
//
//  Created by 肖鑫 on 2018/12/4.
//  Copyright © 2018 Eleven. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LinkedList.h"
#import "Node.h"
#import "ExcersiceSinglyLLTestCls_1.h"

//  反转链表
LinkedList* reverse(LinkedList *list) {
    LinkedList *reverseLL = [[LinkedList alloc] initWithData:list.head.data];
    
    Node *curNodeOfList = [[Node alloc] initWithNode:list.head.next];
    
    while (curNodeOfList != nil) {
        //        [reverseLL appendInLinkHead:curNodeOfList.data];
        Node *node = [[Node alloc] initWithData:curNodeOfList.data];
        
        node.next = reverseLL.head;
        reverseLL.head = node;
        
        curNodeOfList = curNodeOfList.next;
    }
    
    return reverseLL;
}

void test() {
    LinkedList *ll = [[LinkedList alloc] initWithData:6];
    
    [ll appendInLinkTail:4];
    
    [ll appendInLinkHead:1];
    
    [ll append:666 afterNodeP:ll.head.next];
    
    NSLog(@"链表 ll.count = %d", ll.count);
    
    [ll printLinkedList];
    
    NSLog(@"-------------------");
    
    /*  删除链表结点操作 暂注释
     
     [ll deleteNode:ll.head];
     
     [ll printLinkedList];
     */
    
    //  反转链表
    LinkedList *a = reverse(ll);
    
    [a printLinkedList];
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        ExcersiceSinglyLLTestCls_1 *testCls = [[ExcersiceSinglyLLTestCls_1 alloc] init];
        [testCls chuliLL];
        
//        test();
    }
    
    return 0;
}




