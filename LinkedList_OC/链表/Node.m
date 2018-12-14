//
//  Node.m
//  链表
//
//  Created by 肖鑫 on 2018/12/4.
//  Copyright © 2018 Eleven. All rights reserved.
//

#import "Node.h"

@implementation Node

- (instancetype)init {
    if (self = [super init]) {
        self.data = 0;
        self.next = nil;
    }
    
    return self;
}

- (instancetype)initWithData:(int)data {
    if (self = [super init]) {
        self.data = data;
        self.next = nil;
    }
    
    return self;
}

- (instancetype)initWithNode:(Node *)node {
    if (self = [super init]) {
        self = node;
    }
    
    return self;
}


#pragma mark - Getter & Setter
- (void)setData:(int)data {
    _data = data;
}

- (void)setNext:(Node *)next {
    _next = next;
}


@end
