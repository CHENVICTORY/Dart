//Dart中的线程与异步  由于dart是单线程操作的，
//但是在开发中我们经常需要使用多线程进行操作
// 例如： 进行网络请求，然后根据请求结果进行界面的调整。

import 'dart:io';
import 'dart:isolate';

void main() {
  ReceivePort r = new ReceivePort();
  //  第一个参数是方法名称，第二个参数是方法的参数
  Isolate.spawn(connectInternet, r.sendPort);
  print("current is in MainThread");

  r.listen((s) {
    print(s);
    if ("whaha" == s) {
      print("close Isolate.");
      r.close();
    }
  });
  r.sendPort.send("1");
  r.sendPort.send('2');
}

void connectInternet(SendPort address) {
  print("start to connect :$address");

  sleep(new Duration(seconds: 2));
  print(" son thread done");
  address.send("whaha");
}
