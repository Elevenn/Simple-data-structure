//
//  XXArrayQueue.h
//  Queue_OC
//
//  Created by 肖鑫 on 2018/12/11.
//  Copyright © 2018 Eleven. All rights reserved.
//

#import "XXArrayQueue.h"

@implementation XXArrayQueue

- (instancetype)initWithArrayQueueCapacity:(NSUInteger)capacity {
    if (self = [super init]) {
        _array = [NSMutableArray arrayWithCapacity:capacity];
        _size = capacity;
        _head = 0;
        _tail = 0;
    }
    
    return self;
}

//  入队
- (BOOL)enqueue:(id)obj {
    if (self.size == self.tail) {
        if (self.head == 0) {
            NSLog(@"队已满");
            return NO;
        }
        
        for (NSUInteger i = self.head; i < self.tail; ++i) {
            self.array[i - self.head] = self.array[i];
        }
        
        self.tail -= self.head;
        self.head = 0;
    }
    
    [self.array addObject:obj];
//    self.array[self.tail] = obj;
    ++self.tail;
    
    return YES;
}

//  出队
- (id)dequeue {
    if (self.tail == self.head) {
        NSLog(@"队已空");
        return NULL;
    }
    
    id tmp = self.array[self.head];
//    [self.array removeObjectAtIndex:0]; //  其实不移除也没事 head下标不会指向他 如果每次都删除 那每次都要做时间复杂度时间复杂度O(n)的操作 搬移数据
    
    ++self.head;
    
    return tmp;
}

@end
