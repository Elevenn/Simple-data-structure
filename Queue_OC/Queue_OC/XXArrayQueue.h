//
//  XXArrayQueue.h
//  Queue_OC
//
//  Created by 肖鑫 on 2018/12/11.
//  Copyright © 2018 Eleven. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface XXArrayQueue : NSObject

@property (nonatomic, strong) NSMutableArray *array;    //!<    数组
@property (nonatomic, assign) NSUInteger size;          //!<    数组大小    ?应该用来表示 Queue 中存放的数量才对
@property (nonatomic, assign) NSUInteger head;          //!<    表示队头下标
@property (nonatomic, assign) NSUInteger tail;          //!<    表示队尾下标

- (instancetype)initWithArrayQueueCapacity:(NSUInteger)capacity;
- (BOOL)enqueue:(id)obj;
- (id)dequeue;

@end

NS_ASSUME_NONNULL_END
