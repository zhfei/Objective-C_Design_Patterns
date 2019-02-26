##### 抽象工程模式

提供了创建一系列相关或互相依赖的对象的接口
抽象工厂->实例工厂
例如：
水果工厂->{南方水果工厂，北方水果工厂}


软件设计的黄金法则：变动需要抽象

当抽象工厂需要生产新产品时，实现它的子工厂都将修改，实现这个接口

**CocoTouch 中的抽象工厂模式**

```
@interface NSNumber (NSNumberCreation)

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

@end

```
**NSNumber**为抽象工厂，它定义了一套工厂接口，由具体的工厂去实现
如：
```
    NSNumber *num1 = [NSNumber numberWithInt:10];
    [num1 intValue];
    [num1 charValue];
```
里面的intValue、charValue方法，都是**NSNumber**抽象工厂中定义的接口

而用类方法返回的对象是实例工厂
```
+ (NSNumber *)numberWithChar:(char)value;
+ (NSNumber *)numberWithUnsignedChar:(unsigned char)value;
```
根据传入的值类型，返回具体的工厂类型，而所有的实例工厂使用同一套方法接口

这样的有抽象工厂，生产一系列相关工厂类的方法叫做类簇
