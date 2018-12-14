//
//  ExcersiceNode_1.m
//  链表
//
//  Created by 肖鑫 on 2018/12/5.
//  Copyright © 2018 Eleven. All rights reserved.
//

#import "ExcersiceNode_1.h"

@implementation ExcersiceNode_1

- (instancetype)init {
    if (self = [super init]) {
        _value = -1;
        _next = nil;
    }
    
    return self;
}

- (instancetype)initWithNode:(ExcersiceNode_1 *)node {
    if (self = [super init]) {
        _value = node.value;
        _next = node.next;
    }
    
    return self;
}

- (instancetype)initWithValue:(int)value {
    if (self = [super init]) {
        _value = value;
        _next = nil;
    }
    
    return self;
}

//- (ExcersiceNode_1 *)next {
//    if (!_next) {
//        _next = [[ExcersiceNode_1 alloc] init];
//    }
//    
//    return _next;
//}


@end
