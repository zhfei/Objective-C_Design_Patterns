####  ObserverPattern 观察者模式

观察者模式也叫：发布-订阅机制
Observer从Subject订阅通知，ConcreteObserver实现抽象Observer，并重载其update方法。一旦
Object需要通知Observer属性变更，就会遍历其保存的Observer列表，逐个调用update方法。
ConcreteObserver的update方法内部可以获得Subject内属性，并进行处理。

定义一种一对多的关系，使一个对象状态改变，所以观察者对象都收到通知


##### 也可以利用Observer的模式，令Observer为中介，可以做到一个自定义对象通过Observer通知到其他多个对象的目的

使用场景：
一对多的通知关系
通过通知可以避免互相依赖，达到复用的目的





#### 在M-V-C模式中，Observer模式是其中比较重要的一环
当数据模型的数据改动时，利用Observer模式通知C控制器，控制器会将新的数据更新到V上面。


Cocoa Touch 框架将Observer模式进行了改写
改写了两种模式：
1.通知，
2.健值观察者。

