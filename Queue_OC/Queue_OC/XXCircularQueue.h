//
//  XXCircularQueue.h
//  Queue_OC
//
//  Created by 肖鑫 on 2018/12/12.
//  Copyright © 2018 Eleven. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface XXCircularQueue : NSObject

@property (nonatomic, strong) NSMutableArray *array;
@property (nonatomic, assign) NSUInteger n;
@property (nonatomic, assign) NSUInteger head;
@property (nonatomic, assign) NSUInteger tail;

- (instancetype)initWithQueueSize:(NSUInteger)n;

- (BOOL)enqueue:(id)obj;
- (id)dequeue;

@end

NS_ASSUME_NONNULL_END
