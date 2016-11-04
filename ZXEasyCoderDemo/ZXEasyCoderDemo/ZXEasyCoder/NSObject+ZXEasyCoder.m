//
//  NSObject+ZXEasyCoder.m
//  ZXEasyCoder
//
//  Created by Jackey on 2016/11/1.
//  Copyright © 2016年 com.zhouxi. All rights reserved.
//


#import "NSObject+ZXEasyCoder.h"
#import "ZXEasyCoder.h"

@implementation NSObject (ZXEasyCoder)

- (void)zx_StoreValueWithKey:(NSString *)key {
    
    [[ZXEasyCoder shareInstance] storeValue:self withKey:key];
}

- (id)zx_ValueWithKey:(NSString *)key {
    
    return [[ZXEasyCoder shareInstance] valueWithKey:key];
}

@end
