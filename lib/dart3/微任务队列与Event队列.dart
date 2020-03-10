import 'dart:io';
import 'dart:isolate';

void main() {
//  dart 中每一个线程所执行的任务都是从两个任务队列中取的，
//  这两个任务队列分别是 微任务队列和Event任务队列， 微任务队列的优先级比较高
//  Event任务队列优先级次之，  首先循环微任务队列，微任务队列处理完成后再处理Event队列，
//  Event队列处理完之后 再次循环处理微任务队列。
// 如果Event队列处理过程中 微任务队列如果收到任务，返回先执行微任务队列


  var receiver = new ReceivePort();

  receiver.listen((t) {
    print("Message received $t");
  });
  //  receiversend出的事件是在Event队列中进行处理
  receiver.sendPort.send("wakaka");
  receiver.sendPort.send("wakaka1");
  //  向微任务队列提交一个任务
  Future.microtask(() {
    print("this is first microtask");
  });
  Future.microtask(() {
    print("microtask2");
    receiver.sendPort.send("wakaka3");
  });

  sleep(new Duration(seconds: 6)); //  是不是意味着只有main方法执行完成之后才会着手处理微任务队列和Event队列

}