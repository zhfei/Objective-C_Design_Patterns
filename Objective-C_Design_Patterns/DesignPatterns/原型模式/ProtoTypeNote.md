### 原型模式

***

原型模式的使用场景
- 实例的创建在运行时，动态创建
- 不想使用工厂模式（通常产品类对应着产品类型的工厂模式）
- 不同实例间仅仅是状态的不同，导致行为不同，复制实例比创建实例更方便
- 对象创建流程繁杂，复制比手工实例更方便
- 对象有许多子对象组合而成，手工创建麻烦，使用复制更好。

原型模式在CocoTouch中的应用
在<NSObject>协议中有四个关于copy方法的声明
```
- (id)copy;
- (id)mutableCopy;

+ (id)copyWithZone:(struct _NSZone *)zone OBJC_ARC_UNAVAILABLE;
+ (id)mutableCopyWithZone:(struct _NSZone *)zone OBJC_ARC_UNAVAILABLE;
```

在NSObject类中有四个关于copy方法的实现
```
- (id)copy;
- (id)mutableCopy;

+ (id)copyWithZone:(struct _NSZone *)zone OBJC_ARC_UNAVAILABLE;
+ (id)mutableCopyWithZone:(struct _NSZone *)zone OBJC_ARC_UNAVAILABLE;
```