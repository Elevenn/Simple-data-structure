//
//  XXStackQueue.h
//  Queue_OC
//
//  Created by 肖鑫 on 2018/12/12.
//  Copyright © 2018 Eleven. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface XXNode : NSObject

@property (nonatomic, assign) id value;
@property (nonatomic, strong, nullable) XXNode *next;

- (instancetype)init;
- (instancetype)initWithValue:(id)value;

@end


@interface XXLinkedList : NSObject

@property (nonatomic, strong, nullable) XXNode *head;
@property (nonatomic, strong, nullable) XXNode *tail;

- (instancetype)init;
- (instancetype)initWithHead:(XXNode *)head;

- (void)append:(id)value;
- (void)prepend:(id)value;
- (void)deleteHeadNode;

@end

@interface XXLinkedListQueue : NSObject

@property (nonatomic, strong) XXLinkedList *linkedList;
@property (nonatomic, assign) NSUInteger n;
@property (nonatomic, strong) XXNode *tail;

- (instancetype)init;

- (BOOL)enqueue:(id)obj;
- (id)dequeue;

@end

NS_ASSUME_NONNULL_END
