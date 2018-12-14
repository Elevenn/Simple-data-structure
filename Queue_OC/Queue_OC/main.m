//
//  main.m
//  Queue_OC
//
//  Created by 肖鑫 on 2018/12/11.
//  Copyright © 2018 Eleven. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "XXArrayQueue.h"
#import "XXLinkedListQueue.h"
#import "XXCircularQueue.h"

void arrayQueue() {
    XXArrayQueue *queue = [[XXArrayQueue alloc] initWithArrayQueueCapacity:20.f];
    
    for (int i = 0; i < 20; ++i) {
        [queue enqueue:@(i)];
    }
    
    [queue dequeue];
    
    [queue enqueue:@"123"];
}

void stackQueue() {
    XXLinkedListQueue *queue = [[XXLinkedListQueue alloc] init];
    [queue enqueue:@"qqq"];
    [queue enqueue:@"aaa"];
    
    [queue dequeue];
}

void circularQueue() {
    XXCircularQueue *circularQ = [[XXCircularQueue alloc] initWithQueueSize:10];
    
    for (int i = 0; i < 9; ++ i) {
        [circularQ enqueue:@(i + 10)];
    }
    
    [circularQ enqueue:@(22)];
    
    [circularQ dequeue];
    [circularQ dequeue];
    [circularQ dequeue];
    [circularQ dequeue];
    [circularQ dequeue];
    [circularQ dequeue];
    [circularQ dequeue];
    [circularQ dequeue];
    [circularQ dequeue];
    [circularQ dequeue];
    
    [circularQ enqueue:@(66)];
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //arrayQueue();
        //stackQueue();
        circularQueue();
    }
    
    return 0;
}
