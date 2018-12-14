//
//  XXStack.h
//  Stack_OC
//
//  Created by 肖鑫 on 2018/12/10.
//  Copyright © 2018 Eleven. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface XXStack : NSObject

@property (nonatomic, strong) NSMutableArray *arrayStack;   //!<    数组
@property (nonatomic, assign) NSUInteger count;             //!<    栈中元素的个数
@property (nonatomic, assign) NSUInteger stackCapacity;     //!<    栈的大小

- (instancetype)initWithStackCapacity:(NSUInteger)capacity;

- (BOOL)push:(id __nullable)obj;
- (id)pop;

@end

NS_ASSUME_NONNULL_END
