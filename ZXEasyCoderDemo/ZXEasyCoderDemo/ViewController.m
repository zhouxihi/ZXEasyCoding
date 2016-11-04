//
//  ViewController.m
//  ZXEasyCoderDemo
//
//  Created by Jackey on 2016/11/2.
//  Copyright © 2016年 com.zhouxi. All rights reserved.
//

#import "ViewController.h"
#import "NSObject+ZXEasyCoder.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSArray *array = @[@"data1", @"data2"];
    
    //归档
    [array zx_StoreValueWithKey:@"key"];
    
    //读档
    NSLog(@"%@", [self zx_ValueWithKey:@"key"]);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
