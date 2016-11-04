//
//  NSObject+ZXEasyCoder.h
//  ZXEasyCoder
//
//  Created by Jackey on 2016/11/1.
//  Copyright © 2016年 com.zhouxi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (ZXEasyCoder)

/**
 *  存储对象方法
 *
 *  @param key   键值
 */
- (void)zx_StoreValueWithKey:(NSString *)key;

/**
 *  提取对象方法
 *
 *  @param key 键值
 *
 *  @return 返回提取的对象
 */
- (id)zx_ValueWithKey:(NSString *)key;


@end
