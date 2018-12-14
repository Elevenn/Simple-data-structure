//
//  XXStackQueue.m
//  Queue_OC
//
//  Created by 肖鑫 on 2018/12/12.
//  Copyright © 2018 Eleven. All rights reserved.
//

#import "XXLinkedListQueue.h"

@implementation XXNode

- (instancetype)init {
    if (self = [super init]) {
        _value = nil;
        _next = nil;
    }
    
    return self;
}

- (instancetype)initWithValue:(id)value {
    if (self = [super init]) {
        _value = value;
        _next = nil;
    }
    
    return self;
}

@end


@implementation XXLinkedList

- (instancetype)init {
    if (self = [super init]) {
        _head = nil;
        _tail = _head;
    }
    
    return self;
}

- (instancetype)initWithHead:(XXNode *)head {
    if (self = [super init]) {
        _head = head;
        _tail = _head;
    }
    
    return self;
}

- (void)append:(id)value {
    XXNode *tmp = [[XXNode alloc] initWithValue:value];
    
    if (self.head == nil) {
        self.head = tmp;
        self.tail = self.head;
    } else {
        tmp.next = self.tail.next;
        self.tail.next = tmp;
        self.tail = tmp;
    }
}

- (void)prepend:(id)value {
    XXNode *tmp = [[XXNode alloc] initWithValue:value];
    
    tmp.next = self.head;
    self.head = tmp;
    
    if (self.head.next == nil) {
        self.tail = self.head;
    }
}

- (void)deleteHeadNode {
    XXNode *tmp = self.head;
    self.head = self.head.next;
    tmp.next = nil;
}

@end


@implementation XXLinkedListQueue

- (instancetype)init {
    if (self = [super init]) {
        _linkedList = [[XXLinkedList alloc] init];
    }
    
    return self;
}

- (BOOL)enqueue:(id)obj {
    [self.linkedList append:obj];
    
    return YES;
}

- (id)dequeue {
    [self.linkedList deleteHeadNode];
    
    return nil;
}

@end
