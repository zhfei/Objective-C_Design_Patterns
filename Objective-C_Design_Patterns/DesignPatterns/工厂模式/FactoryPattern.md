##### 工厂模式

工厂模式
工厂方法按照抽象程度分为三类
1.简单工厂: 内部实现是静态方法。返回什么对象是根据type决定。
2.工厂方法: 定义了工厂接口->实例工厂。产品接口->实例产品。什么工厂生产什么样的产品。一一对应。
3.抽象工厂: （产品接口->实例产品）一个产品接口对应的多个产品实例属于一个产品等级。抽象工厂是多个产品等级的。
                    等于在多个产品接口上面还有一个父产品接口。而不同产品等级中的相同规格商品处于同一个产品族。

何时使用工厂模式？
1.编译时无法确定要创建对象的类是什么
2.类想让其子类在运行时自己决定创建什么
3.类有很多具体的子类，你想让返回什么样的子类局部化，内部自行判断

开发中Cocoa Touch框架中典型使用的例子

工厂方法的变形，类工厂方法。
通过工厂基类，根据参数直接返回对应的类型实例

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
某一天想新增一种产品时，客户端代码无需修改，只需要新增一个工厂方法就好了（这也是工厂模式一个比较重要的用途）
工厂模式消除了应用程序对特有类的耦合，只需要定义虚拟类的抽象接口，同一套代码得以复用。

而单纯使用[[NSNumber alloc] init]; 返回的是nil


工厂方法实现方式：
1.通过定义产品抽象类，工厂抽象类，来消除程序对特有类的耦合，达到代码复用
2.通过类方法，如cocoa touch框架中的NSNumber类，客户端无需关注工厂类，但是需要明确知道所使用类的类型
