#ZXEasyCoding

##说明:
对FastCording进行封装, 更便捷存储和读取对象数据


##安装:
添加ZXEasyCoder整个文件夹到项目中, #import "NSObject+ZXEasyCoder.h"即可


##提醒事项:
需手动给FastCoder关闭ARC, 
默认只能对不可变数据做存储, 可变数据存储前需要转换为不可变数据

##代码示例:(存取不可变数据)

    //定义数据
    NSArray *array = @[@"data1", @"data2"];
    
    //归档
    [array zx_StoreValueWithKey:@"key"];
    
    //读档
    NSLog(@"array[1] = %@", [self zx_ValueWithKey:@"key"][1]);


##代码示例: (存取可变数据)

    //定义数据
    NSMutableArray *mutableArray = [@[@"data1", @"data2"] mutableCopy];
    
    //可变数据归档前先转换给不可变数据
    NSArray *array = [[NSArray alloc] initWithArray:mutableArray.copy];
    
    //归档
    [array zx_StoreValueWithKey:@"key"];
    
    //读档
    NSLog(@"array[1] = %@", [self zx_ValueWithKey:@"key"][1]);
