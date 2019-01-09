### 原型模式

***

原型模式：
应用于“复制”操作的模式，称为原型模式。复制指用同一个模具生产一系列产品。
使用原型指定创建对象的种类，并通过复制这个原型创建新对象。


原型模式的使用场景
- 实例的创建在运行时，动态创建
- 不想使用工厂模式（通常产品类对应着产品类型的工厂模式）
- 不同实例间仅仅是状态的不同，导致行为不同，复制实例比创建实例更方便
- 对象创建流程繁杂，复制比手工实例更方便
- 对象有许多子对象组合而成，手工创建麻烦，使用复制更好。

深复制与浅复制问题：
深复制指对象内存复制
浅复制指对象指针复制

原型模式在CocoTouch中的应用
在NSObject协议中有四个关于copy方法的声明
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

在NSCopying和NSMutableCopying协议中对复制的方法声明
```
@protocol NSCopying

- (id)copyWithZone:(nullable NSZone *)zone;

@end

@protocol NSMutableCopying

- (id)mutableCopyWithZone:(nullable NSZone *)zone;

@end
```
当对一个没有实现NSCopying协议的对象调用copy,编译器会崩溃

```
2018-11-11 14:40:46.083468+0800 Objective-C_Design_Patterns[3689:111332] *** Terminating app due to uncaught exception 'NSInvalidArgumentException', reason: '-[ZHFProtoTypeModelA copyWithZone:]: unrecognized selector sent to instance 0x6000027da5a0'

```

```
2018-11-11 15:03:51.031419+0800 Objective-C_Design_Patterns[4601:124602] *** Terminating app due to uncaught exception 'NSInvalidArgumentException', reason: '-[ZHFProtoTypeModelA mutableCopyWithZone:]: unrecognized selector sent to instance 0x600000b606a0'
*
```
根据崩溃信息可以得出
1.调用对象A的copy方法
2.A内部的copy方法，会调用内部的copyWithZone:
3.若对象内的copyWithZone：方法没有实现，就会崩溃
==复制的目的是复制资源，而非只是复制指针==







