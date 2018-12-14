//
//  Node.h
//  链表
//
//  Created by 肖鑫 on 2018/12/4.
//  Copyright © 2018 Eleven. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Node : NSObject

@property (nonatomic, assign) int data;     //!<    结点中的数据
@property (nonatomic, strong, nullable) Node *next;   //!<    下一个结点的地址

- (instancetype)initWithData:(int)data;     //!<    结点初始化
- (instancetype)initWithNode:(Node *)node;     //!<    结点初始化

@end

NS_ASSUME_NONNULL_END
