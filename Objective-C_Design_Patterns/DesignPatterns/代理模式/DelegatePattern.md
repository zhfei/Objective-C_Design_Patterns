####  DelegatePattern 代理模式

代理模式种类：
1.远程代理,用本地对象代替网络对象
2.虚拟代理，直接面向客户端，客户端认为操作的虚拟对象就是真实的对象。会提供占位对象和重型对象。当真正需要时才会加载重型对象。
3.保护代理，根据各种访问权限，控制对原对象的的访问
4.智能引用代理，锁定真正对象，让其他对象不能对其修改

代理模式
为其他对象提供一种代理，以控制对这个对象的访问


CocoTouch中的代理模式
Object-C不支持多继承，如果代理对象不是NSObject的子类的话，可以考虑用NSProxy来作为占位或者替代对象。
NSProxy和NSObject一样是Cocoa框架中的一个根类(root class),NSProxy抽象基类实现了NSObject协议，所以说NSProxy也是NSObject类型。只是没有初始化方法。对NSProxy调用它不知道的方法会抛出异常。

尽管NSProxy也是NSObject类型，但是NSProxy的作用就是当代理。

方法
forwardInvocation
methodSignatureForSelector
是实现代理的重要途径，作用是实现消息转发。
虽然Object-C不支持多继承，但是可以使用消息转发间接实现多继承。
