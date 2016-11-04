//
//  ZXEasyCoder.h
//  ZXEasyCoder
//
//  Created by Jackey on 2016/11/1.
//  Copyright © 2016年 com.zhouxi. All rights reserved.
//


#import <Foundation/Foundation.h>

@interface ZXEasyCoder : NSObject

/**
 *  单例方法
 *
 *  @return 返回单例实例对象
 */
+ (instancetype)shareInstance;

/**
 *  复写alloc方法
 *
 *  @param zone zone对象
 *
 *  @return 返回单例实例对象
 */
+ (id)allocWithZone:(struct _NSZone *)zone;

/**
 *  复写copy方法
 *
 *  @param zone zone对象
 *
 *  @return 返回单例实例对象
 */
- (id)copyWithZone: (struct _NSZone *)zone;

/**
 *  存储对象方法
 *
 *  @param value 要存储的对象
 *  @param key   键值
 */
- (void)storeValue:(id)value withKey:(NSString *)key;

/**
 *  获取对象方法
 *
 *  @param key 键值
 *
 *  @return 返回提取的对象
 */
- (id)valueWithKey:(NSString *)key;

@end
