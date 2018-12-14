//
//  ExcersiceNode_1.h
//  链表
//
//  Created by 肖鑫 on 2018/12/5.
//  Copyright © 2018 Eleven. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ExcersiceNode_1 : NSObject

@property (nonatomic, assign) int value;
@property (nonatomic, strong, nullable) ExcersiceNode_1 *next;

- (instancetype)init;
- (instancetype)initWithNode:(ExcersiceNode_1 *)node;
- (instancetype)initWithValue:(int)value;


@end

NS_ASSUME_NONNULL_END
