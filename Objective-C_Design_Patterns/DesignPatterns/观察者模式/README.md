####  ObserverPattern 观察者模式

观察者模式也叫：发布-订阅机制
Observer从Subject订阅通知，ConcreteObserver实现抽象Observer，并重载其update方法。一旦
Object需要通知Observer属性变更，就会遍历其保存的Observer列表，逐个调用update方法。
ConcreteObserver的update方法内部可以获得Subject内属性，并进行处理。

