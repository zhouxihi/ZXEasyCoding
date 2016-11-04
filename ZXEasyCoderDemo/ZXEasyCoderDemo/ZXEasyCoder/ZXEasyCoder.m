//
//  ZXEasyCoder.m
//  ZXEasyCoder
//
//  Created by Jackey on 2016/11/1.
//  Copyright © 2016年 com.zhouxi. All rights reserved.
//

#import "ZXEasyCoder.h"
#import "FastCoder.h"

@implementation ZXEasyCoder

static ZXEasyCoder * _instance = nil;

+ (instancetype)shareInstance {
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        
        _instance = [[super allocWithZone:NULL] init];
    });
    
    return _instance;
}


+ (id)allocWithZone:(struct _NSZone *)zone {
    
    return [ZXEasyCoder shareInstance];
}


- (id)copyWithZone: (struct _NSZone *)zone {
    
    return [ZXEasyCoder shareInstance];
}

- (void)storeValue:(id)value withKey:(NSString *)key {
    
    NSData *data = [FastCoder dataWithRootObject:value];
    
    if (data) {
        
        [[NSUserDefaults standardUserDefaults] setObject:data forKey:key];
    }
}

-(id)valueWithKey:(NSString *)key {
    
    NSData *data = [[NSUserDefaults standardUserDefaults] valueForKey:key];
    
    return [FastCoder objectWithData:data];
}

@end
