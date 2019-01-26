//
//  ZHFScribbleManager.m
//  Objective-C_Design_Patterns
//
//  Created by 周飞 on 2018/12/8.
//  Copyright © 2018年 周飞. All rights reserved.
//

#import "ZHFScribbleManager.h"
#import <BottomComponentLib/FileManager.h>

@implementation ZHFScribbleManager
SingletonM(ZHFScribbleManager)
- (void)saveScribble:(ZHFScribble *)scrbble thumbnail:(UIImage *)image {
    //为当前存储的涂鸦数据和截图获取新的索引值
    NSInteger newIndex = [self numberOfScribbles] + 1;
    //根据索引值生成涂鸦数据名和截图名
    NSString *scribbleDataName = [NSString stringWithFormat:@"data_%d",newIndex];
    NSString *scribbleThumbnailName = [NSString stringWithFormat:@"thumbnail_%d",newIndex];
    
    //从涂鸦获得备忘录，然后存储到本地
    ZHFScribbleMemento *mem = [scrbble scribbleMemento];
    NSData *mementoData = [mem data];
    NSString *memPath = [NSString stringWithFormat:@"%@/%@.modelData",[self scribbleDataPath],scribbleDataName];
    [FileManager saveData:mementoData toPath:memPath];
    
    //把缩略图保存到文件系统
    NSData *imageData = [NSData dataWithData:UIImagePNGRepresentation(image)];
    NSString *scribbleThumbnailPath = [NSString stringWithFormat:@"%@/%@.imageData",[self scribbleDataPath],scribbleThumbnailName];
    [FileManager saveData:imageData toPath:memPath];
}

- (ZHFScribble *)scribbleAtIndex:(NSInteger)index {
    //根据索引值生成涂鸦数据名和截图名
    NSString *scribbleDataName = [NSString stringWithFormat:@"data_%d",index];
    NSString *memPath = [[self scribbleDataPath] stringByAppendingPathComponent:scribbleDataName];

    NSData *mementoData = [FileManager readObjetFromPath:memPath];
    ZHFScribbleMemento *memento = [ZHFScribbleMemento mementoWithData:mementoData];
    ZHFScribble *scribble = [ZHFScribble scribbleWithMemento:memento];
    return scribble;
}

//TODO: 等待填充
- (NSInteger)numberOfScribbles {
//    NSArray *objs = [FileManager readObjetsFromPath:[self scribbleDataPath]];
//    NSPredicate *predice =[NSPredicate predicateWithFormat:@"SELF CONTAINS[cd] 'data_'"];
//    NSArray *result = [objs filteredArrayUsingPredicate:predice];
//
//    NSPredicate *predice2 =[NSPredicate predicateWithFormat:@"@max"];
//    NSArray *result2 = [result filteredArrayUsingPredicate:predice2];
//
//    NSString *res = [result2 lastObject];
//    NSInteger index = [res rangeOfString:@"_"].location;
//    NSString *subStr = [res substringWithRange:NSMakeRange(index+1, 1)];
//
//    return [subStr integerValue];
    return 2;
}


#pragma mark - private method
- (NSString *)scribbleDataPath {
    NSString *documentDir = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject];
   NSString *path = [documentDir stringByAppendingPathComponent:@"ScribbleData"];
    return path;
}

@end
