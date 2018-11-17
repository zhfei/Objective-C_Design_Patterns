##### 工厂模式

++何时使用工厂模式？++
1.编译时无法确定要创建对象的类是什么
2.类想让其子类在运行时自己决定创建什么
3.类有很多具体的子类，你想让返回什么样的子类局部化，内部自行判断

++开发中Cocoa Touch框架中典型使用的例子++
NSNumber类定义了一系列的工厂方法：
```
+ (NSNumber *)numberWithChar:(char)value;
+ (NSNumber *)numberWithUnsignedChar:(unsigned char)value;
+ (NSNumber *)numberWithShort:(short)value;
+ (NSNumber *)numberWithUnsignedShort:(unsigned short)value;
+ (NSNumber *)numberWithInt:(int)value;
+ (NSNumber *)numberWithUnsignedInt:(unsigned int)value;
+ (NSNumber *)numberWithLong:(long)value;
+ (NSNumber *)numberWithUnsignedLong:(unsigned long)value;
+ (NSNumber *)numberWithLongLong:(long long)value;
+ (NSNumber *)numberWithUnsignedLongLong:(unsigned long long)value;
+ (NSNumber *)numberWithFloat:(float)value;
+ (NSNumber *)numberWithDouble:(double)value;
+ (NSNumber *)numberWithBool:(BOOL)value;
+ (NSNumber *)numberWithInteger:(NSInteger)value API_AVAILABLE(macos(10.5), ios(2.0), watchos(2.0), tvos(9.0));
+ (NSNumber *)numberWithUnsignedInteger:(NSUInteger)value API_AVAILABLE(macos(10.5), ios(2.0), watchos(2.0), tvos(9.0));
```
每个方法参数都有传给类工厂方法的值
某一天想新增一种产品时，客户端代码无需修改，只需要新增一个工厂方法就好了

而单纯使用[[NSNumber alloc] init]; 返回的是nil
![test0.png](/Users/zhoufei/Desktop/test0.png)
